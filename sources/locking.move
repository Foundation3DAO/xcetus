// Move bytecode v6
module xcetus::locking {
  use cetus::cetus::CETUS;
  use move_stl::linked_table::LinkedTable;
  use std::type_name::TypeName;
  use sui::balance::Balance;
  use sui::clock::Clock;
  use sui::coin::Coin;
  use sui::object::{ID, UID};
  use sui::tx_context::TxContext;
  use sui::address;
  use xcetus::lock_coin::LockedCoin;
  use xcetus::xcetus::{VeNFT,XcetusManager};

  struct AdminCap has store, key {
    id: UID
  }
  struct LockUpManager has key {
    id: UID,
    balance: Balance<CETUS>,
    treasury_manager: address,
    extra_treasury: Balance<CETUS>,
    lock_infos: LinkedTable<ID, LockInfo>,
    type_name: TypeName,
    min_lock_day: u64,
    max_lock_day: u64,
    min_percent_numerator: u64,
    max_percent_numerator: u64,
    package_version: u64
  }
  struct LockInfo has drop, store {
    venft_id: ID,
    lock_id: ID,
    xcetus_amount: u64,
    cetus_amount: u64
  }
  
  struct SetPackageVersion has copy, drop {
    new_version: u64,
    old_version: u64
  }
  struct LOCKING has drop {
    dummy_field: bool
  }

  fun init(_arg0: LOCKING, _arg1: &mut TxContext) {
    abort 0
  }
  fun receive(_arg0: &mut LockUpManager, _arg1: Balance<CETUS>) {
    abort 0
  }
  fun take(_arg0: &mut LockUpManager, _arg1: u64): Balance<CETUS> {
    abort 0
  }
  fun receive_treasury(_arg0: &mut LockUpManager, _arg1: u64) {
    abort 0
  }
  fun take_treasury(_arg0: &mut LockUpManager): Balance<CETUS> {
    abort 0
  }
  public fun checked_package_version(_arg0: &LockUpManager) {
    abort 0
  }
  public entry fun update_package_version<Ty0>(_arg0: &AdminCap, _arg1: &mut LockUpManager, _arg2: u64) {
    abort 0
  }
  fun initialize(_arg0: u64, _arg1: u64, _arg2: u64, _arg3: u64, _arg4: &mut TxContext) {
    abort 0
  }
  public fun convert(_arg0: &mut LockUpManager, _arg1: &mut XcetusManager, _arg2: vector<Coin<CETUS>>, _arg3: u64, _arg4: &mut VeNFT, _arg5: &mut TxContext) {
    abort 0
  }
  public fun redeem_lock(_arg0: &mut LockUpManager, _arg1: &mut XcetusManager, _arg2: &mut VeNFT, _arg3: u64, _arg4: u64, _arg5: &Clock, _arg6: &mut TxContext) {
    abort 0
  }
  public fun cancel_redeem_lock(_arg0: &mut LockUpManager, _arg1: &mut XcetusManager, _arg2: &mut VeNFT, _arg3: LockedCoin<CETUS>, _arg4: &Clock) {
    abort 0
  }
  public fun redeem(_arg0: &mut LockUpManager, _arg1: &mut XcetusManager, _arg2: &mut VeNFT, _arg3: LockedCoin<CETUS>, _arg4: &Clock, _arg5: &mut TxContext) {
    abort 0
  }
  public fun mint_and_convert(_arg0: &mut LockUpManager, _arg1: &mut XcetusManager, _arg2: vector<Coin<CETUS>>, _arg3: u64, _arg4: &mut TxContext) {
    abort 0
  }
  public entry fun update_treasury_manager(_arg0: &AdminCap, _arg1: &mut LockUpManager, _arg2: address) {
    abort 0
  }
  public entry fun redeem_treasury(_arg0: &mut LockUpManager, _arg1: &mut TxContext) {
    abort 0
  }
  fun redeem_num(_arg0: u64, _arg1: u64, _arg2: u64, _arg3: u64, _arg4: u64, _arg5: u64): u64 {
    abort 0
  }
}
