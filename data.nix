{
  version = "1.11.0";

  # Latest version: curl -s https://api.github.com/repos/clockworklabs/SpacetimeDB/releases/latest | grep '"tag_name"'

  spacetimedbPkgs = {
    "aarch64-darwin" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.0/spacetime-aarch64-apple-darwin.tar.gz";
      sha256 = "00y6l6f71rj8ycsr5kqdn9h4mzjgcmxbmaxb93x4yga9sryczs5v";
    }];

    "x86_64-darwin" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.0/spacetime-x86_64-apple-darwin.tar.gz";
      sha256 = "10y1pdxdr7s3h3vb9ackkk4xibp66agn2l8fv4g126qjh3j6v00i";
    }];

    "x86_64-linux" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.0/spacetime-x86_64-unknown-linux-gnu.tar.gz";
      sha256 = "0m24kh8nlh9i05bbdg3h4v79vgj33gpv23jzdlqi45ad6yv4l1k3";
    }];

    "aarch64-linux" = [{
      url = "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.11.0/spacetime-aarch64-unknown-linux-gnu.tar.gz";
      sha256 = "1kgc41fsx4irijiwn5qjp5pc3zvkh9x0wb76x116lk77cyqiiihq";
    }];
  };
}
