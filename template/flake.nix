{
  description = "Generic nix shell";

  inputs = {
    # nixpkgs.url = github:nixos/nixpkgs/nixos-unstable; # unstable version of nixpkgs
    nixpkgs.url = github:nixos/nixpkgs/release-22.11; # stable version of nixpkgs
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs = inputs @{ self, flake-utils, nixpkgs }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = import ./overlays.nix;
        };
      in
      {
        devShells.default = (import ./shell.nix { inherit pkgs; });
      });
}

