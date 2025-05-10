{ stdenv, pkgs ? import <nixpkgs> {} }:

stdenv.mkDerivation {
  pname = "lagartao-gay";
  name = "lagartao-gay";
  src = ./.;
  buildInputs = with pkgs; [ jekyll ];

  dontUnpack = false;
  buildPhase = "jekyll build";
  installPhase = ''
    mkdir $out
    cp ./_site/* $out'';
}
