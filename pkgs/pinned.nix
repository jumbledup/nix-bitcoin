# This file is generated by ../helper/update-flake.nix
pkgs: pkgsUnstable:
{
  inherit (pkgs)
    bitcoin
    bitcoind
    extra-container
    lightning-pool
    lndconnect
    nbxplorer;

  inherit (pkgsUnstable)
    btcpayserver
    charge-lnd
    clightning
    electrs
    elementsd
    fulcrum
    hwi
    lightning-loop;

  inherit pkgs pkgsUnstable;
}
