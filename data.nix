{
  version = "1.10.0";

  # Latest version: curl -s https://api.github.com/repos/clockworklabs/SpacetimeDB/releases/latest | grep '"tag_name"'

  spacetimedbPkgs = {
    "aarch64-darwin" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.10.0/spacetime-aarch64-apple-darwin.tar.gz";
      sha256 = "1p7rkdk063zarcjizpzmrljy5dr9h3sd184siwnka5hm3gh4hr8z";
    }];

    "x86_64-darwin" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.10.0/spacetime-x86_64-apple-darwin.tar.gz";
      sha256 = "0djh3hps847nfj1lmxh152k03iykk0d9qbx0bw3zs5mdrxfzyln0";
    }];

    "x86_64-linux" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.10.0/spacetime-x86_64-unknown-linux-gnu.tar.gz";
      sha256 = "19gnz3wfc1d97wl5aqwhk8nqf3hwlbyvmn88a39afq7kjgg8dgfz";
    }];

    "aarch64-linux" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.10.0/spacetime-aarch64-unknown-linux-gnu.tar.gz";
      sha256 = "1l2igdk8k5zl4wmz87zwqgifffwl0bvd8fsymh8rscgiqcqdjphv";
    }];
  };
}
