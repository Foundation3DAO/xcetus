module xcetus::lock_coin {
  use std::type_name;
  use sui::balance::{Self, Balance};
  use sui::clock::{Self, Clock};
  use sui::coin::{Self, Coin};
  use sui::object::{Self, UID, ID};
  use sui::transfer;
  use sui::tx_context::{Self, TxContext};
 
  struct LockedCoin<phantom T> has key {
    id: UID,
    balance: Balance<T>,
    locked_start_time: u64,
    locked_until_time: u64
  }

  public fun lock_coin<T>(arg0: Coin<T>, arg1: u64, arg2: u64, arg3: address, arg4: &mut TxContext): ID {
    abort 0
  }
  public fun unlock_coin<T>(arg0: LockedCoin<T>, arg1: &Clock, arg2: &mut TxContext): ID {
    abort 0
  }
  public fun value<T>(arg0: &LockedCoin<T>): u64 {
    abort 0
  }
  public fun lock_time<T>(arg0: &LockedCoin<T>): u64 {
    abort 0
  }
  fun new_from_balance<T>(arg0: Balance<T>, arg1: u64, arg2: u64, arg3: address, arg4: &mut TxContext): ID {
    abort 0
  }
  public fun destory_lock<T>(arg0: LockedCoin<T>): (Balance<T>, ID) {
    abort 0
  }
}
