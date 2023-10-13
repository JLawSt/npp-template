{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  name = "p2100-a1";

  src = ./.;

  buildInputs = [ pkgs.gcc pkgs.make ];

  buildPhase = ''
    make
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp main $out/bin/
  '';
}
