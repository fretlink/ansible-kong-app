{ pkgs ? import <nixpkgs> {} }: with pkgs;

  let
    custom = callPackage ./custom.nix {};
  in
{
  inherit ansible_2_8;
  inherit (custom)dhall;
  inherit (python38Packages)
          ansible-lint;
}
