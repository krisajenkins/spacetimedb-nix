# SpacetimeDB Nix Overlay

## Updating Versions

When updating SpacetimeDB versions, fetch new SHA256 hashes for each platform.

### Nix Hash Prefetching

- `nix-prefetch-url URL` → hash of the file as-is (use with `fetchurl`)
- `nix-prefetch-url --unpack URL` → hash of unpacked contents (use with `fetchzip`, `fetchFromGitHub`)

This package uses `fetchurl`, so use `nix-prefetch-url` **without** `--unpack`.

### Testing

Always run an actual `nix build` (not `--dry-run`) to verify hashes before committing. Dry-run only evaluates the derivation without downloading or verifying hashes.

### Tagging

After committing a version update, tag that commit with the SpacetimeDB version, prefixed with `v` (e.g. `v2.14.1`):

```bash
jj tag set v2.14.1 -r <change-id>
```

The tag goes on the update commit itself, not on the empty working-copy change above it. Push the tag along with the bookmark: `jj git push --bookmark main --tag v2.14.1`.
