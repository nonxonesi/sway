contract;

use std::result::*;
use std::storage::{StorageVec, StorageVecError};

enum TestEnum {
    A: (),
    B: (),
}

struct TestStruct {
    A: bool,
    B: u64,
}

abi MyContract {
    #[storage(write)]
    fn vec_u8_push(value: u8);
    #[storage(read)]
    fn vec_u8_get(index: u64);
    #[storage(write)]
    fn vec_u8_pop();
    #[storage(read, write)]
    fn vec_u8_remove(index: u64) -> Result<u8, StorageVecError>;
    #[storage(read, write)]
    fn vec_u8_swap_remove(index: u64) -> Result<u8, StorageVecError>;
    #[storage(read, write)]
    fn vec_u8_insert(index: u64, value: u8) -> Result<(), StorageVecError>;
    #[storage(read)]
    fn vec_u8_len() -> u64;
    #[storage(read)]
    fn vec_u8_is_empty() -> bool;
    #[storage(write)]
    fn vec_u8_clear();

    #[storage(write)]
    fn vec_u16_push(value: u16);
    #[storage(read)]
    fn vec_u16_get(index: u64);
    #[storage(write)]
    fn vec_u16_pop();
    #[storage(read, write)]
    fn vec_u16_remove(index: u64) -> Result<u16, StorageVecError>;
    #[storage(read, write)]
    fn vec_u16_swap_remove(index: u64) -> Result<u16, StorageVecError>;
    #[storage(read, write)]
    fn vec_u16_insert(index: u64, value: u16) -> Result<(), StorageVecError>;
    #[storage(read)]
    fn vec_u16_len() -> u64;
    #[storage(read)]
    fn vec_u16_is_empty() -> bool;
    #[storage(write)]
    fn vec_u16_clear();

    #[storage(write)]
    fn vec_u32_push(value: u32);
    #[storage(read)]
    fn vec_u32_get(index: u64);
    #[storage(write)]
    fn vec_u32_pop();
    #[storage(read, write)]
    fn vec_u32_remove(index: u64) -> Result<u32, StorageVecError>;
    #[storage(read, write)]
    fn vec_u32_swap_remove(index: u64) -> Result<u32, StorageVecError>;
    #[storage(read, write)]
    fn vec_u32_insert(index: u64, value: u32) -> Result<(), StorageVecError>;
    #[storage(read)]
    fn vec_u32_len() -> u64;
    #[storage(read)]
    fn vec_u32_is_empty() -> bool;
    #[storage(write)]
    fn vec_u32_clear();

    #[storage(write)]
    fn vec_u64_push(value: u64);
    #[storage(read)]
    fn vec_u64_get(index: u64);
    #[storage(write)]
    fn vec_u64_pop();
    #[storage(read, write)]
    fn vec_u64_remove(index: u64) -> Result<u64, StorageVecError>;
    #[storage(read, write)]
    fn vec_u64_swap_remove(index: u64) -> Result<u64, StorageVecError>;
    #[storage(read, write)]
    fn vec_u64_insert(index: u64, value: u64) -> Result<(), StorageVecError>;
    #[storage(read)]
    fn vec_u64_len() -> u64;
    #[storage(read)]
    fn vec_u64_is_empty() -> bool;
    #[storage(write)]
    fn vec_u64_clear();

    #[storage(write)]
    fn vec_bool_push(value: bool);
    #[storage(read)]
    fn vec_bool_get(index: u64);
    #[storage(write)]
    fn vec_bool_pop();
    #[storage(read, write)]
    fn vec_bool_remove(index: u64) -> Result<bool, StorageVecError>;
    #[storage(read, write)]
    fn vec_bool_swap_remove(index: u64) -> Result<bool, StorageVecError>;
    #[storage(read, write)]
    fn vec_bool_insert(index: u64, value: bool) -> Result<(), StorageVecError>;
    #[storage(read)]
    fn vec_bool_len() -> u64;
    #[storage(read)]
    fn vec_bool_is_empty() -> bool;
    #[storage(write)]
    fn vec_bool_clear();

    #[storage(write)]
    fn vec_str4_push(value: str[4]);
    #[storage(read)]
    fn vec_str4_get(index: u64);
    #[storage(write)]
    fn vec_str4_pop();
    #[storage(read, write)]
    fn vec_str4_remove(index: u64) -> Result<str[4], StorageVecError>;
    #[storage(read, write)]
    fn vec_str4_swap_remove(index: u64) -> Result<str[4], StorageVecError>;
    #[storage(read, write)]
    fn vec_str4_insert(index: u64, value: str[4]) -> Result<(), StorageVecError>;
    #[storage(read)]
    fn vec_str4_len() -> u64;
    #[storage(read)]
    fn vec_str4_is_empty() -> bool;
    #[storage(write)]
    fn vec_str4_clear();

    #[storage(write)]
    fn vec_b256_push(value: b256);
    #[storage(read)]
    fn vec_b256_get(index: u64);
    #[storage(write)]
    fn vec_b256_pop();
    #[storage(read, write)]
    fn vec_b256_remove(index: u64) -> Result<b256, StorageVecError>;
    #[storage(read, write)]
    fn vec_b256_swap_remove(index: u64) -> Result<b256, StorageVecError>;
    #[storage(read, write)]
    fn vec_b256_insert(index: u64, value: b256) -> Result<(), StorageVecError>;
    #[storage(read)]
    fn vec_b256_len() -> u64;
    #[storage(read)]
    fn vec_b256_is_empty() -> bool;
    #[storage(write)]
    fn vec_b256_clear();

    #[storage(write)]
    fn vec_u64_tuple_push(value: (u64, u64));
    #[storage(read)]
    fn vec_u64_tuple_get(index: u64);
    #[storage(write)]
    fn vec_u64_tuple_pop();
    #[storage(read, write)]
    fn vec_u64_tuple_remove(index: u64) -> Result<(u64, u64), StorageVecError>;
    #[storage(read, write)]
    fn vec_u64_tuple_swap_remove(index: u64) -> Result<(u64, u64), StorageVecError>;
    #[storage(read, write)]
    fn vec_u64_tuple_insert(index: u64, value: (u64, u64)) -> Result<(), StorageVecError>;
    #[storage(read)]
    fn vec_u64_tuple_len() -> u64;
    #[storage(read)]
    fn vec_u64_tuple_is_empty() -> bool;
    #[storage(write)]
    fn vec_u64_tuple_clear();

    #[storage(write)]
    fn vec_u64_array_push(value: [u64; 2]);
    #[storage(read)]
    fn vec_u64_array_get(index: u64);
    #[storage(write)]
    fn vec_u64_array_pop();
    #[storage(read, write)]
    fn vec_u64_array_remove(index: u64) -> Result<[u64; 2], StorageVecError>;
    #[storage(read, write)]
    fn vec_u64_array_swap_remove(index: u64) -> Result<[u64; 2], StorageVecError>;
    #[storage(read, write)]
    fn vec_u64_array_insert(index: u64, value: [u64; 2]) -> Result<(), StorageVecError>;
    #[storage(read)]
    fn vec_u64_array_len() -> u64;
    #[storage(read)]
    fn vec_u64_array_is_empty() -> bool;
    #[storage(write)]
    fn vec_u64_array_clear();

    #[storage(write)]
    fn vec_enum_push(value: TestEnum);
    #[storage(read)]
    fn vec_enum_get(index: u64);
    #[storage(write)]
    fn vec_enum_pop();
    #[storage(read, write)]
    fn vec_enum_remove(index: u64) -> Result<TestEnum, StorageVecError>;
    #[storage(read, write)]
    fn vec_enum_swap_remove(index: u64) -> Result<TestEnum, StorageVecError>;
    #[storage(read, write)]
    fn vec_enum_insert(index: u64, value: TestEnum) -> Result<(), StorageVecError>;
    #[storage(read)]
    fn vec_enum_len() -> u64;
    #[storage(read)]
    fn vec_enum_is_empty() -> bool;
    #[storage(write)]
    fn vec_enum_clear();

    #[storage(write)]
    fn vec_struct_push(value: TestStruct);
    #[storage(read)]
    fn vec_struct_get(index: u64);
    #[storage(write)]
    fn vec_struct_pop();
    #[storage(read, write)]
    fn vec_struct_remove(index: u64) -> Result<TestStruct, StorageVecError>;
    #[storage(read, write)]
    fn vec_struct_swap_remove(index: u64) -> Result<TestStruct, StorageVecError>;
    #[storage(read, write)]
    fn vec_struct_insert(index: u64, value: TestStruct) -> Result<(), StorageVecError>;
    #[storage(read)]
    fn vec_struct_len() -> u64;
    #[storage(read)]
    fn vec_struct_is_empty() -> bool;
    #[storage(write)]
    fn vec_struct_clear();
}

storage {
    vec_u8: StorageVec<u8>,
    vec_u16: StorageVec<u16>,
    vec_u32: StorageVec<u32>,
    vec_u64: StorageVec<u64>,
    vec_bool: StorageVec<bool>,
    vec_str4: StorageVec<str[4]>,
    vec_b256: StorageVec<b256>,
    vec_u64_tuple: StorageVec<(u64, u64)>,
    vec_u64_array: StorageVec<[u64; 2]>,
    vec_enum: StorageVec<TestEnum>,
    vec_struct: StorageVec<TestStruct>,
}

impl MyContract for Contract {
    #[storage(write)]
    fn vec_u8_push(value: u8) {
        storage.vec_u8.push(value);
    }
    #[storage(read)]
    fn vec_u8_get(index: u64) {
        storage.vec_u8.get(index);
    }
    #[storage(write)]
    fn vec_u8_pop() {
        storage.vec_u8.pop();
    }
    #[storage(read, write)]
    fn vec_u8_remove(index: u64) -> Result<u8, StorageVecError> {
        storage.vec_u8.remove(index)
    }
    #[storage(read, write)]
    fn vec_u8_swap_remove(index: u64) -> Result<u8, StorageVecError> {
        storage.vec_u8.swap_remove(index)
    }
    #[storage(read, write)]
    fn vec_u8_insert(index: u64, value: u8) -> Result<(), StorageVecError> {
        storage.vec_u8.insert(index, value)
    }
    #[storage(read)]
    fn vec_u8_len() -> u64 {
        storage.vec_u8.len()
    }
    #[storage(read)]
    fn vec_u8_is_empty() -> bool {
        storage.vec_u8.is_empty()
    }
    #[storage(write)]
    fn vec_u8_clear() {
        storage.vec_u8.clear();
    }



    #[storage(write)]
    fn vec_u16_push(value: u16) {
        storage.vec_u16.push(value);
    }
    #[storage(read)]
    fn vec_u16_get(index: u64) {
        storage.vec_u16.get(index);
    }
    #[storage(write)]
    fn vec_u16_pop() {
        storage.vec_u16.pop();
    }
    #[storage(read, write)]
    fn vec_u16_remove(index: u64) -> Result<u16, StorageVecError> {
        storage.vec_u16.remove(index)
    }
    #[storage(read, write)]
    fn vec_u16_swap_remove(index: u64) -> Result<u16, StorageVecError> {
        storage.vec_u16.swap_remove(index)
    }
    #[storage(read, write)]
    fn vec_u16_insert(index: u64, value: u16) -> Result<(), StorageVecError> {
        storage.vec_u16.insert(index, value)
    }
    #[storage(read)]
    fn vec_u16_len() -> u64 {
        storage.vec_u16.len()
    }
    #[storage(read)]
    fn vec_u16_is_empty() -> bool {
        storage.vec_u16.is_empty()
    }
    #[storage(write)]
    fn vec_u16_clear() {
        storage.vec_u16.clear();
    }



    #[storage(write)]
    fn vec_u32_push(value: u32) {
        storage.vec_u32.push(value);
    }
    #[storage(read)]
    fn vec_u32_get(index: u64) {
        storage.vec_u32.get(index);
    }
    #[storage(write)]
    fn vec_u32_pop() {
        storage.vec_u32.pop();
    }
    #[storage(read, write)]
    fn vec_u32_remove(index: u64) -> Result<u32, StorageVecError> {
        storage.vec_u32.remove(index)
    }
    #[storage(read, write)]
    fn vec_u32_swap_remove(index: u64) -> Result<u32, StorageVecError> {
        storage.vec_u32.swap_remove(index)
    }
    #[storage(read, write)]
    fn vec_u32_insert(index: u64, value: u32) -> Result<(), StorageVecError> {
        storage.vec_u32.insert(index, value)
    }
    #[storage(read)]
    fn vec_u32_len() -> u64 {
        storage.vec_u32.len()
    }
    #[storage(read)]
    fn vec_u32_is_empty() -> bool {
        storage.vec_u32.is_empty()
    }
    #[storage(write)]
    fn vec_u32_clear() {
        storage.vec_u32.clear();
    }




    #[storage(write)]
    fn vec_u64_push(value: u64) {
        storage.vec_u64.push(value);
    }
    #[storage(read)]
    fn vec_u64_get(index: u64) {
        storage.vec_u64.get(index);
    }
    #[storage(write)]
    fn vec_u64_pop() {
        storage.vec_u64.pop();
    }
    #[storage(read, write)]
    fn vec_u64_remove(index: u64) -> Result<u64, StorageVecError> {
        storage.vec_u64.remove(index)
    }
    #[storage(read, write)]
    fn vec_u64_swap_remove(index: u64) -> Result<u64, StorageVecError> {
        storage.vec_u64.swap_remove(index)
    }
    #[storage(read, write)]
    fn vec_u64_insert(index: u64, value: u64) -> Result<(), StorageVecError> {
        storage.vec_u64.insert(index, value)
    }
    #[storage(read)]
    fn vec_u64_len() -> u64 {
        storage.vec_u64.len()
    }
    #[storage(read)]
    fn vec_u64_is_empty() -> bool {
        storage.vec_u64.is_empty()
    }
    #[storage(write)]
    fn vec_u64_clear() {
        storage.vec_u64.clear();
    }



    #[storage(write)]
    fn vec_bool_push(value: bool) {
        storage.vec_bool.push(value);
    }
    #[storage(read)]
    fn vec_bool_get(index: u64) {
        storage.vec_bool.get(index);
    }
    #[storage(write)]
    fn vec_bool_pop() {
        storage.vec_bool.pop();
    }
    #[storage(read, write)]
    fn vec_bool_remove(index: u64) -> Result<bool, StorageVecError> {
        storage.vec_bool.remove(index)
    }
    #[storage(read, write)]
    fn vec_bool_swap_remove(index: u64) -> Result<bool, StorageVecError> {
        storage.vec_bool.swap_remove(index)
    }
    #[storage(read, write)]
    fn vec_bool_insert(index: u64, value: bool) -> Result<(), StorageVecError> {
        storage.vec_bool.insert(index, value)
    }
    #[storage(read)]
    fn vec_bool_len() -> u64 {
        storage.vec_bool.len()
    }
    #[storage(read)]
    fn vec_bool_is_empty() -> bool {
        storage.vec_bool.is_empty()
    }
    #[storage(write)]
    fn vec_bool_clear() {
        storage.vec_bool.clear();
    }




    #[storage(write)]
    fn vec_str4_push(value: str[4]) {
        storage.vec_str4.push(value);
    }
    #[storage(read)]
    fn vec_str4_get(index: u64) {
        storage.vec_str4.get(index);
    }
    #[storage(write)]
    fn vec_str4_pop() {
        storage.vec_str4.pop();
    }
    #[storage(read, write)]
    fn vec_str4_remove(index: u64) -> Result<str[4], StorageVecError> {
        storage.vec_str4.remove(index)
    }
    #[storage(read, write)]
    fn vec_str4_swap_remove(index: u64) -> Result<str[4], StorageVecError> {
        storage.vec_str4.swap_remove(index)
    }
    #[storage(read, write)]
    fn vec_str4_insert(index: u64, value: str[4]) -> Result<(), StorageVecError> {
        storage.vec_str4.insert(index, value)
    }
    #[storage(read)]
    fn vec_str4_len() -> u64 {
        storage.vec_str4.len()
    }
    #[storage(read)]
    fn vec_str4_is_empty() -> bool {
        storage.vec_str4.is_empty()
    }
    #[storage(write)]
    fn vec_str4_clear() {
        storage.vec_str4.clear();
    }



    #[storage(write)]
    fn vec_b256_push(value: b256) {
        storage.vec_b256.push(value);
    }
    #[storage(read)]
    fn vec_b256_get(index: u64) {
        storage.vec_b256.get(index);
    }
    #[storage(write)]
    fn vec_b256_pop() {
        storage.vec_b256.pop();
    }
    #[storage(read, write)]
    fn vec_b256_remove(index: u64) -> Result<b256, StorageVecError> {
        storage.vec_b256.remove(index)
    }
    #[storage(read, write)]
    fn vec_b256_swap_remove(index: u64) -> Result<b256, StorageVecError> {
        storage.vec_b256.swap_remove(index)
    }
    #[storage(read, write)]
    fn vec_b256_insert(index: u64, value: b256) -> Result<(), StorageVecError> {
        storage.vec_b256.insert(index, value)
    }
    #[storage(read)]
    fn vec_b256_len() -> u64 {
        storage.vec_b256.len()
    }
    #[storage(read)]
    fn vec_b256_is_empty() -> bool {
        storage.vec_b256.is_empty()
    }
    #[storage(write)]
    fn vec_b256_clear() {
        storage.vec_b256.clear();
    }



    #[storage(write)]
    fn vec_u64_tuple_push(value: (u64, u64)) {
        storage.vec_u64_tuple.push(value);
    }
    #[storage(read)]
    fn vec_u64_tuple_get(index: u64) {
        storage.vec_u64_tuple.get(index);
    }
    #[storage(write)]
    fn vec_u64_tuple_pop() {
        storage.vec_u64_tuple.pop();
    }
    #[storage(read, write)]
    fn vec_u64_tuple_remove(index: u64) -> Result<(u64, u64), StorageVecError> {
        storage.vec_u64_tuple.remove(index)
    }
    #[storage(read, write)]
    fn vec_u64_tuple_swap_remove(index: u64) -> Result<(u64, u64), StorageVecError> {
        storage.vec_u64_tuple.swap_remove(index)
    }
    #[storage(read, write)]
    fn vec_u64_tuple_insert(index: u64, value: (u64, u64)) -> Result<(), StorageVecError> {
        storage.vec_u64_tuple.insert(index, value)
    }
    #[storage(read)]
    fn vec_u64_tuple_len() -> u64 {
        storage.vec_u64_tuple.len()
    }
    #[storage(read)]
    fn vec_u64_tuple_is_empty() -> bool {
        storage.vec_u64_tuple.is_empty()
    }
    #[storage(write)]
    fn vec_u64_tuple_clear() {
        storage.vec_u64_tuple.clear();
    }



     #[storage(write)]
    fn vec_u64_array_push(value: [u64; 2]) {
        storage.vec_u64_array.push(value);
    }
    #[storage(read)]
    fn vec_u64_array_get(index: u64) {
        storage.vec_u64_array.get(index);
    }
    #[storage(write)]
    fn vec_u64_array_pop() {
        storage.vec_u64_array.pop();
    }
    #[storage(read, write)]
    fn vec_u64_array_remove(index: u64) -> Result<[u64; 2], StorageVecError> {
        storage.vec_u64_array.remove(index)
    }
    #[storage(read, write)]
    fn vec_u64_array_swap_remove(index: u64) -> Result<[u64; 2], StorageVecError> {
        storage.vec_u64_array.swap_remove(index)
    }
    #[storage(read, write)]
    fn vec_u64_array_insert(index: u64, value: [u64; 2]) -> Result<(), StorageVecError> {
        storage.vec_u64_array.insert(index, value)
    }
    #[storage(read)]
    fn vec_u64_array_len() -> u64 {
        storage.vec_u64_array.len()
    }
    #[storage(read)]
    fn vec_u64_array_is_empty() -> bool {
        storage.vec_u64_array.is_empty()
    }
    #[storage(write)]
    fn vec_u64_array_clear() {
        storage.vec_u64_array.clear();
    }



    #[storage(write)]
    fn vec_enum_push(value: TestEnum) {
        storage.vec_enum.push(value);
    }
    #[storage(read)]
    fn vec_enum_get(index: u64) {
        storage.vec_enum.get(index);
    }
    #[storage(write)]
    fn vec_enum_pop() {
        storage.vec_enum.pop();
    }
    #[storage(read, write)]
    fn vec_enum_remove(index: u64) -> Result<TestEnum, StorageVecError> {
        storage.vec_enum.remove(index)
    }
    #[storage(read, write)]
    fn vec_enum_swap_remove(index: u64) -> Result<TestEnum, StorageVecError> {
        storage.vec_enum.swap_remove(index)
    }
    #[storage(read, write)]
    fn vec_enum_insert(index: u64, value: TestEnum) -> Result<(), StorageVecError> {
        storage.vec_enum.insert(index, value)
    }
    #[storage(read)]
    fn vec_enum_len() -> u64 {
        storage.vec_enum.len()
    }
    #[storage(read)]
    fn vec_enum_is_empty() -> bool {
        storage.vec_enum.is_empty()
    }
    #[storage(write)]
    fn vec_enum_clear() {
        storage.vec_enum.clear();
    }



    #[storage(write)]
    fn vec_struct_push(value: TestStruct) {
        storage.vec_struct.push(value);
    }
    #[storage(read)]
    fn vec_struct_get(index: u64) {
        storage.vec_struct.get(index);
    }
    #[storage(write)]
    fn vec_struct_pop() {
        storage.vec_struct.pop();
    }
    #[storage(read, write)]
    fn vec_struct_remove(index: u64) -> Result<TestStruct, StorageVecError> {
        storage.vec_struct.remove(index)
    }
    #[storage(read, write)]
    fn vec_struct_swap_remove(index: u64) -> Result<TestStruct, StorageVecError> {
        storage.vec_struct.swap_remove(index)
    }
    #[storage(read, write)]
    fn vec_struct_insert(index: u64, value: TestStruct) -> Result<(),StorageVecError> {
        storage.vec_struct.insert(index, value)
    }
    #[storage(read)]
    fn vec_struct_len() -> u64 {
        storage.vec_struct.len()
    }
    #[storage(read)]
    fn vec_struct_is_empty() -> bool {
        storage.vec_struct.is_empty()
    }
    #[storage(write)]
    fn vec_struct_clear() {
        storage.vec_struct.clear();
    }
}
