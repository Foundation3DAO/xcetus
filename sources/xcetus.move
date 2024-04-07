module xcetus::xcetus {
  use be21a06129308e0495431d12286127897aff07a8ade3970495a4404d97f9eaaa::linked_table;
  use std::option;
  use sui::balance;
  use sui::coin;
  use sui::event;
  use sui::object;
  use sui::table;
  use sui::transfer;
  use sui::tx_context;
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
  
  init(Arg0: XCETUS, Arg1: &mut TxContext) {
    abort 0
  }

  new_venft(Arg0: u64, Arg1: &mut TxContext): VeNFT {
    abort 0
  }

  public(friend) update_locked(Arg0: &mut XcetusManager, Arg1: &VeNFT, Arg2: u64) {
    abort 0
  }

  public(friend) update_unlocked(Arg0: &mut XcetusManager, Arg1: &VeNFT, Arg2: u64) {
    abort 0
  }
  public mint_venft(Arg0: &mut XcetusManager, Arg1: &mut TxContext): ID {
    abort 0
  }
  public(friend) mint_venft_object(Arg0: &mut XcetusManager, Arg1: &mut TxContext): VeNFT {
    abort 0
  }
  public(friend) transfer_venft(Arg0: VeNFT, Arg1: &mut TxContext) {
    abort 0
  }
  public burn_venft(Arg0: &mut XcetusManager, Arg1: VeNFT, Arg2: &mut TxContext) {
    abort 0
  }
  public(friend) mint(Arg0: &mut XcetusManager, Arg1: &mut VeNFT, Arg2: u64) {
    abort 0
  }
  public(friend) burn(Arg0: &mut XcetusManager, Arg1: &mut VeNFT, Arg2: u64, Arg3: &mut TxContext) {
    abort 0
  }
  entry public burn_by_admin(Arg0: &AdminCap, Arg1: &mut XcetusManager, Arg2: &mut VeNFT, Arg3: u64, Arg4: &mut TxContext) {
    abort 0
  }
  public xcetus_amount(Arg0: &VeNftInfo): u64 {
    abort 0
  }
  public lock_amount(Arg0: &VeNftInfo): u64 {
    abort 0
  }
  public value(Arg0: &XcetusManager, Arg1: &VeNFT): u64 {
    abort 0
  }
  public available_value(Arg0: &XcetusManager, Arg1: &VeNFT): u64 {
    abort 0
  }
  public totol_amount(Arg0: &XcetusManager): u64 {
    abort 0
  }
  public total_locked(Arg0: &XcetusManager): u64 {
    abort 0
  }
  public total_holder(Arg0: &XcetusManager): u64 {
    abort 0
  }
  public nfts(Arg0: &XcetusManager): &LinkedTable<ID, VeNftInfo> {
    abort 0
  }
}
