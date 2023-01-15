{ pkgs ? import <nixpkgs> {
    overlays = import ./overlays.nix;
  }
}:
pkgs.mkShell {
  buildInputs = with pkgs;[
  ];
}
