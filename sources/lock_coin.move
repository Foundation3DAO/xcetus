module xcetus::lock_coin {
  use std::type_name;
  use sui::balance;
  use sui::clock;
  use sui::coin;
  use sui::event;
  use sui::object;
  use sui::transfer;
  use sui::tx_context;
 
  struct LockedCoin<phantom T> has key {
    id: UID,
    balance: Balance<T>,
    locked_start_time: u64,
    locked_until_time: u64
  }

  public lock_coin<T>(Arg0: Coin<T>, Arg1: u64, Arg2: u64, Arg3: address, Arg4: &mut TxContext): ID {
    abort 0;
  }
  public unlock_coin<T>(Arg0: LockedCoin<T>, Arg1: &Clock, Arg2: &mut TxContext): ID {
    abort 0;
  }
  public value<T>(Arg0: &LockedCoin<T>): u64 {
    abort 0;
  }
  public lock_time<T>(Arg0: &LockedCoin<T>): u64 {
    abort 0;
  }
  new_from_balance<T>(Arg0: Balance<T>, Arg1: u64, Arg2: u64, Arg3: address, Arg4: &mut TxContext): ID {
    abort 0;
  }
  public destory_lock<T>(Arg0: LockedCoin<T>): Balance<T> * ID {
    abort 0;
  }
}
