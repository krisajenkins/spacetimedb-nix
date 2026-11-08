{
  version = "2.14.1";

  # Latest version: curl -s https://api.github.com/repos/clockworklabs/SpacetimeDB/releases/latest | grep '"tag_name"'

  spacetimedbPkgs = {
    "aarch64-darwin" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v2.14.1/spacetime-aarch64-apple-darwin.tar.gz";
      sha256 = "0126xcdqngr1j0g4fbdcdd5wnlzq9dxnzxm14g9vp758jqn7n3rv";
    }];

    "x86_64-darwin" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v2.14.1/spacetime-x86_64-apple-darwin.tar.gz";
      sha256 = "0v3qw14w89hqac1bkvhia9n91f350vbfxnn1rs8710gbvl7d0ay5";
    }];

    "x86_64-linux" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v2.14.1/spacetime-x86_64-unknown-linux-gnu.tar.gz";
      sha256 = "0ay8fk0kaqr9bvkpl3rz5dh9jn1wkcq9p6dbnicbmi5b36fck8v7";
    }];

    "aarch64-linux" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v2.14.1/spacetime-aarch64-unknown-linux-gnu.tar.gz";
      sha256 = "1rzs22ah6bnkijk2xmr46138hyqz6248if743rqx2i4rchw01qav";
    }];
  };
}
