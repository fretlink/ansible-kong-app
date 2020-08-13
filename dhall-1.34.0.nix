{ pkgs ? import <nixpkgs> {} }: with pkgs;

let
  mkVersion =
    version: sha256:
      stdenv.mkDerivation {
        name = "dhall-${version}";
        inherit version;
        src = fetchurl {
          url = "https://github.com/dhall-lang/dhall-haskell/releases/download/${version}/dhall-${version}-x86_64-linux.tar.bz2";
          inherit sha256;
        };
        unpackPhase = ''
          tar -xjf $src
        '';
        installPhase = ''
          mkdir -p $out/bin
          mv bin/dhall $out/bin/
        '';
      };
in
  mkVersion "1.34.0" "0n64jkgbv7a3cmlv3gxpgc11p9b5w0k9nc0zm9am2pzmp6vm6b4n"
