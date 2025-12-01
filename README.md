# SpacetimeDB for Nix

Nix flake for [SpacetimeDB](https://spacetimedb.com) - a database that runs anywhere.

## Usage

### Method 1: Direct flake reference (recommended)

Add to your `flake.nix`:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    spacetimedb.url = "github:kjenkins/spacetimedb-nix";
  };

  outputs = { self, nixpkgs, spacetimedb, ... }:
    let
      system = "x86_64-linux"; # or aarch64-darwin, etc.
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

### Method 2: Using the overlay

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    spacetimedb.url = "github:kjenkins/spacetimedb-nix";
  };

  outputs = { self, nixpkgs, spacetimedb, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ spacetimedb.overlays.default ];
      };
    in
    {
      devShells.default = pkgs.mkShell {
        buildInputs = [ pkgs.spacetimedb ];
      };
    };
}
```

### Method 3: One-off usage

```bash
nix shell github:kjenkins/spacetimedb-nix
spacetime --version
```

### Method 4: Run without installing

```bash
nix run github:kjenkins/spacetimedb-nix -- --version
```

## Supported Platforms

- `x86_64-linux`
- `aarch64-linux`
- `x86_64-darwin`
- `aarch64-darwin`

## Updating

To update to a new SpacetimeDB version:

1. Update `version` in `data.nix`
2. Update URLs in `spacetimedbPkgs`
3. Update sha256 hashes:
   ```bash
   nix-prefetch-url <url>
   ```

## License

SpacetimeDB is proprietary software. This Nix package is provided as-is for convenience.
