{
  version = "1.11.0";

  # Latest version: curl -s https://api.github.com/repos/clockworklabs/SpacetimeDB/releases/latest | grep '"tag_name"'

  spacetimedbPkgs = {
    "aarch64-darwin" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.0/spacetime-aarch64-apple-darwin.tar.gz";
      sha256 = "01aywdcp0xcbqm1b845hvpjwls83fp76i0865ynbb6mz4gzi3x1d";
    }];

    "x86_64-darwin" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.0/spacetime-x86_64-apple-darwin.tar.gz";
      sha256 = "0l5hmxxw21g5r9fw6g33cvrax4n30iaqcji6440aiikgxgpjynn3";
    }];

    "x86_64-linux" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.0/spacetime-x86_64-unknown-linux-gnu.tar.gz";
      sha256 = "1nyyyfhka7rlj4if5cz0f7dx0ls2nfcbdskja6cr47g442175ki8";
    }];

    "aarch64-linux" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.0/spacetime-aarch64-unknown-linux-gnu.tar.gz";
      sha256 = "00k25nd2c0l7nbksqyyrq3vb6faa24ias8vfx4cak3yk3vgfdn5m";
    }];
  };
}
