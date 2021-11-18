use core_lang::parse;
use fuel_client::client::FuelClient;
use fuel_tx::{Output, Salt, Transaction};
use fuel_vm::prelude::*;

use crate::cli::{BuildCommand, DeployCommand};
use crate::ops::forc_build;
use crate::utils::cli_error::CliError;

use crate::utils::{constants, helpers};
use constants::{DEFAULT_NODE_URL, SWAY_CONTRACT, SWAY_LIBRARY, SWAY_PREDICATE, SWAY_SCRIPT};
use helpers::{find_manifest_dir, get_main_file, read_manifest};
use std::path::PathBuf;

pub async fn deploy(command: DeployCommand) -> Result<(), CliError> {
    let curr_dir = if let Some(ref path) = command.path {
        PathBuf::from(path)
    } else {
        std::env::current_dir()?
    };

    let DeployCommand {
        path,
        print_finalized_asm,
        print_intermediate_asm,
        binary_outfile,
        offline_mode,
        silent_mode,
    } = command;

    match find_manifest_dir(&curr_dir) {
        Some(manifest_dir) => {
            let manifest = read_manifest(&manifest_dir)?;
            let project_name = &manifest.project.name;
            let main_file = get_main_file(&manifest, &manifest_dir)?;

            // parse the main file and check is it a contract
            let parsed_result = parse(main_file, None);
            match parsed_result.value {
                Some(parse_tree) => {
                    if parse_tree.contract_ast.is_some() {
                        let build_command = BuildCommand {
                            path,
                            print_finalized_asm,
                            print_intermediate_asm,
                            binary_outfile,
                            offline_mode,
                            silent_mode,
                        };

                        let compiled_contract = forc_build::build(build_command)?;
                        let (inputs, outputs) = manifest
                            .get_tx_inputs_and_outputs()
                            .map_err(|message| CliError { message })?;
                        let tx = create_contract_tx(compiled_contract, inputs, outputs);

                        let node_url = match &manifest.network {
                            Some(network) => &network.url,
                            _ => DEFAULT_NODE_URL,
                        };

                        let client = FuelClient::new(node_url)?;

                        match client.submit(&tx).await {
                            Ok(logs) => {
                                println!("Logs:\n{:?}", logs);
                                Ok(())
                            }
                            Err(e) => Err(e.to_string().into()),
                        }
                    } else {
                        let parse_type = {
                            if parse_tree.script_ast.is_some() {
                                SWAY_SCRIPT
                            } else if parse_tree.predicate_ast.is_some() {
                                SWAY_PREDICATE
                            } else {
                                SWAY_LIBRARY
                            }
                        };

                        Err(CliError::wrong_sway_type(
                            project_name,
                            SWAY_CONTRACT,
                            parse_type,
                        ))
                    }
                }
                None => Err(CliError::parsing_failed(project_name, parsed_result.errors)),
            }
        }
        None => Err(CliError::manifest_file_missing(curr_dir)),
    }
}

fn create_contract_tx(
    compiled_contract: Vec<u8>,
    inputs: Vec<Input>,
    outputs: Vec<Output>,
) -> Transaction {
    let gas_price = 0;
    let gas_limit = 10000000;
    let maturity = 0;
    let bytecode_witness_index = 0;
    let witnesses = vec![compiled_contract.clone().into()];

    let salt = Salt::new([0; 32]);
    let static_contracts = vec![];

    let contract = Contract::from(compiled_contract);
    let root = contract.root();
    let id = contract.id(&salt, &root);
    println!("Contract id: 0x{}", hex::encode(id));
    let outputs = [&[Output::ContractCreated { contract_id: id }], &outputs[..]].concat();

    Transaction::create(
        gas_price,
        gas_limit,
        maturity,
        bytecode_witness_index,
        salt,
        static_contracts,
        inputs,
        outputs,
        witnesses,
    )
}