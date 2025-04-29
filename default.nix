{ stdenv, pkgs ? import <nixpkgs> {} }:

stdenv.mkDerivation {
  pname = "lagartao-gay";
  name = "lagartao-gay";
  src = ./.;
  buildInputs = with pkgs; [ jekyll ];

  dontUnpack = true;
  buildPhase = "jekyll build";
  installPhase = ''
    mkdir -p /var/www
    cp _site/* /var/www'';
}
