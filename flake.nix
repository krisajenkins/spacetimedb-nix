{
  description = "SpacetimeDB - a database that runs anywhere";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          packages = {
            spacetimedb = pkgs.callPackage ./package.nix { };
            default = self.packages.${system}.spacetimedb;
          };
        }
      ) // {
      # Make overlay available without system
      overlays.default = final: prev: {
        spacetimedb = final.callPackage ./package.nix { };
      };
    };
}
