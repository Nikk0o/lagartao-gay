{ stdenv, pkgs ? import <nixpkgs> {} }:

stdenv.mkDerivation {
  pname = "lagartao-gay";
  name = "lagartao-gay";
  src = ./.;
  buildInputs = with pkgs; [ jekyll ];

  dontUnpack = false;
  buildPhase = "jekyll build";
  installPhase = ''
    cp ./_site/* $out -r'';
}
