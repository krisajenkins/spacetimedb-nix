# SpacetimeDB for Nix

Nix flake for [SpacetimeDB](https://spacetimedb.com) - a database that runs anywhere.

## Important: Unfree License

SpacetimeDB has an unfree license (BSL 1.1). How you handle this depends on which method you use:

- **Overlay method**: Set `config.allowUnfree = true` in your nixpkgs import
- **Direct package reference**: Requires `NIXPKGS_ALLOW_UNFREE=1` and `--impure`

## Usage

### Method 1: Using the overlay (recommended)

The overlay integrates with your nixpkgs config, so `allowUnfree = true` works:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/25.11";
    flake-utils.url = "github:numtide/flake-utils";
    spacetimedb.url = "github:krisajenkins/spacetimedb-nix";
  };

  outputs = { self, nixpkgs, flake-utils, spacetimedb }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [ spacetimedb.overlays.default ];
        };

      in
      {
        packages = { };

        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.spacetimedb
          ];
        };
      });
}
```

### Method 2: Direct package reference

This method requires `--impure` because the package is evaluated with this flake's nixpkgs, not yours:

```bash
NIXPKGS_ALLOW_UNFREE=1 nix develop --impure
```

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/25.11";
    spacetimedb.url = "github:krisajenkins/spacetimedb-nix";
  };

  outputs = { self, nixpkgs, spacetimedb, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.default = pkgs.mkShell {
        buildInputs = [
          spacetimedb.packages.${system}.default
        ];
      };
    };
}
```

### Method 3: One-off shell

```bash
NIXPKGS_ALLOW_UNFREE=1 nix shell github:krisajenkins/spacetimedb-nix --impure
spacetime --version
```

### Method 4: Run without installing

```bash
NIXPKGS_ALLOW_UNFREE=1 nix run github:krisajenkins/spacetimedb-nix --impure -- --version
```

## Supported Platforms

- `x86_64-linux`
- `aarch64-linux`
- `x86_64-darwin`
- `aarch64-darwin`

## Updating

To update to a new SpacetimeDB version:

1. Update `version` in `data.nix`
1. Update URLs in `spacetimedbPkgs`
1. Update sha256 hashes:
   ```bash
   nix-prefetch-url <url>
   ```

## License

SpacetimeDB uses the Business Source License 1.1 (BSL 1.1), which converts to AGPL-3.0 after 4 years. This Nix package is provided as-is for convenience.
