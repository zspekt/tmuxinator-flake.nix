{
  description = "tmuxinator 3.3.0 flake (latest in nixpkgs is 3.14)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    {
      defaultPackage.x86_64-linux =
        (import nixpkgs { system = "x86_64-linux"; }).callPackage ./default.nix
          { };
      defaultPackage.aarch64-linux =
        (import nixpkgs { system = "aarch64-linux"; }).callPackage ./default.nix
          { };
    };
}
