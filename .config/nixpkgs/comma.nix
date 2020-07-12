{ pkgs ? import <nixpkgs> {}
, stdenv ? pkgs.stdenv
}:
pkgs.fetchFromGitHub {
  owner = "Shopify";
  repo = "comma";
  rev = "4a62ec17e20ce0e738a8e5126b4298a73903b468";
  hash = "06p58f82wipd0a8wbc7j3l0p8iaxvdibgshmc9dbxkjf0hmln3kx";
}
