module xcetus::router {
  use cetus::cetus::CETUS;
  use sui::clock::Clock;
  use sui::coin::Coin;
  use sui::object::{Self, ID};
  use sui::tx_context::TxContext;
  use xcetus::lock_coin::LockedCoin;
  use xcetus::locking::LockUpManager;
  use xcetus::xcetus::{XcetusManager,VeNFT};

  public entry fun convert(_arg0: &mut LockUpManager, _arg1: &mut XcetusManager, _arg2: vector<Coin<CETUS>>, _arg3: u64, _arg4: &mut VeNFT, _arg5: &mut TxContext) {
    abort 0
  }
  public entry fun mint_and_convert(_arg0: &mut LockUpManager, _arg1: &mut XcetusManager, _arg2: vector<Coin<CETUS>>, _arg3: u64, _arg4: &mut TxContext) {
    abort 0
  }
  public entry fun redeem_lock(_arg0: &mut LockUpManager, _arg1: &mut XcetusManager, _arg2: &mut VeNFT, _arg3: u64, _arg4: u64, _arg5: &Clock, _arg6: &mut TxContext) {
    abort 0
  }
  public entry fun cancel_redeem_lock(_arg0: &mut LockUpManager, _arg1: &mut XcetusManager, _arg2: &mut VeNFT, _arg3: LockedCoin<CETUS>, _arg4: &Clock) {
    abort 0
  }
  public entry fun redeem(_arg0: &mut LockUpManager, _arg1: &mut XcetusManager, _arg2: &mut VeNFT, _arg3: LockedCoin<CETUS>, _arg4: &Clock, _arg5: &mut TxContext) {
    abort 0
  }
  public entry fun burn_venft(_arg0: &mut XcetusManager, _arg1: VeNFT, _arg2: &mut TxContext) {
    abort 0
  }
  public entry fun mint_venft(_arg0: &mut XcetusManager, _arg1: &mut TxContext): ID {
    abort 0
  }
}
