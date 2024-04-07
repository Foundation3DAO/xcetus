module xcetus::xcetus {
  use move_stl::linked_table::LinkedTable;
  use std::option;
  use sui::balance::{Self, Balance};
  use sui::coin::{Self, TreasuryCap, Coin};
  use sui::object::{Self, ID, UID};
  use sui::table::{Self, Table};
  use sui::transfer;
  use sui::tx_context::{Self, TxContext};
  use sui::url;
  
  struct XCETUS has drop {
    dummy_field: bool
  }

  struct AdminCap has store, key {
    id: UID
  }

  struct XcetusManager has key {
    id: UID,
    index: u64,
    has_venft: Table<address, bool>,
    nfts: LinkedTable<ID, VeNftInfo>,
    treasury: TreasuryCap<XCETUS>,
    total_locked: u64
  }

  struct VeNftInfo has drop, store {
    id: ID,
    xcetus_amount: u64,
    lock_amount: u64
  }

  struct VeNFT has key {
    id: UID,
    index: u64,
    xcetus_balance: Balance<XCETUS>
  }
  
  fun init(arg0: XCETUS, arg1: &mut TxContext) {
    abort 0
  }

  fun new_venft(arg0: u64, arg1: &mut TxContext): VeNFT {
    abort 0
  }
 
  public(friend) fun update_locked(arg0: &mut XcetusManager, arg1: &VeNFT, arg2: u64) {
    abort 0
  }

  public(friend) fun update_unlocked(arg0: &mut XcetusManager, arg1: &VeNFT, arg2: u64) {
    abort 0
  }
  public fun mint_venft(arg0: &mut XcetusManager, arg1: &mut TxContext): ID {
    abort 0
  }
  public(friend) fun mint_venft_object(arg0: &mut XcetusManager, arg1: &mut TxContext): VeNFT {
    abort 0
  }
  public(friend) fun transfer_venft(arg0: VeNFT, arg1: &mut TxContext) {
    abort 0
  }
  public fun burn_venft(arg0: &mut XcetusManager, arg1: VeNFT, arg2: &mut TxContext) {
    abort 0
  }
  public(friend) fun mint(arg0: &mut XcetusManager, arg1: &mut VeNFT, arg2: u64) {
    abort 0
  }
  public(friend) fun burn(arg0: &mut XcetusManager, arg1: &mut VeNFT, arg2: u64, arg3: &mut TxContext) {
    abort 0
  }
  public entry fun burn_by_admin(arg0: &AdminCap, arg1: &mut XcetusManager, arg2: &mut VeNFT, arg3: u64, arg4: &mut TxContext) {
    abort 0
  }
  public fun xcetus_amount(arg0: &VeNftInfo): u64 {
    abort 0
  }
  public fun lock_amount(arg0: &VeNftInfo): u64 {
    abort 0
  }
  public fun value(arg0: &XcetusManager, arg1: &VeNFT): u64 {
    abort 0
  }
  public fun available_value(arg0: &XcetusManager, arg1: &VeNFT): u64 {
    abort 0
  }
  public fun totol_amount(arg0: &XcetusManager): u64 {
    abort 0
  }
  public fun total_locked(arg0: &XcetusManager): u64 {
    abort 0
  }
  public fun total_holder(arg0: &XcetusManager): u64 {
    abort 0
  }
  public fun nfts(arg0: &XcetusManager): &LinkedTable<ID, VeNftInfo> {
    abort 0
  }
}
