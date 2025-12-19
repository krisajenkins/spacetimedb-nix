{
  version = "1.11.1";

  # Latest version: curl -s https://api.github.com/repos/clockworklabs/SpacetimeDB/releases/latest | grep '"tag_name"'

  spacetimedbPkgs = {
    "aarch64-darwin" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.1/spacetime-aarch64-apple-darwin.tar.gz";
      sha256 = "0nh800plkia8fd2spmm1z0kp2zsj64a0ykd1rz04jszy1c8zc9jp";
    }];

    "x86_64-darwin" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.1/spacetime-x86_64-apple-darwin.tar.gz";
      sha256 = "00cl2x5k00lj3806bx4za54xcykrpx5pl4wmpm0wsvrk9bg279fs";
    }];

    "x86_64-linux" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.1/spacetime-x86_64-unknown-linux-gnu.tar.gz";
      sha256 = "0h0ajq3cc1qzy7wnpc3ncyx0l9jf7d0a0wvwwv7s4raa429mzcig";
    }];

    "aarch64-linux" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.1/spacetime-aarch64-unknown-linux-gnu.tar.gz";
      sha256 = "09cmbdp5sdafwjzvrhhwwq73yzdzby7939li2csmz8c31d16wpp1";
    }];
  };
}
