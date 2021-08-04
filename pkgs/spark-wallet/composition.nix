# This file has been generated by node2nix 1.8.0. Do not edit!

{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, nodejs ? pkgs."nodejs-10_x"}:

let
  nodeEnv = import "${toString pkgs.path}/pkgs/development/node-packages/node-env.nix" {
    inherit pkgs;
    inherit (pkgs) lib stdenv python2 runCommand writeTextFile;
    inherit nodejs;
    libtool = if pkgs.stdenv.isDarwin then pkgs.darwin.cctools else null;
  };
in
import ./node-packages.nix {
  inherit (pkgs) fetchurl fetchgit;
  inherit nodeEnv;
}