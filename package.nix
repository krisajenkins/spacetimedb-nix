{ lib
, stdenv
, fetchurl
}:

let
  data = import ./data.nix;
  inherit (data) version spacetimedbPkgs;
in
stdenv.mkDerivation rec {
  pname = "spacetimedb";
  inherit version;

  src =
    let
      pkgInfo = builtins.head (spacetimedbPkgs.${stdenv.system} or (throw "Unsupported system: ${stdenv.system}"));
    in
    fetchurl {
      inherit (pkgInfo) url sha256;
    };

  # The tarball doesn't have a top-level directory, just the binaries
  sourceRoot = ".";

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    install -m755 spacetimedb-cli $out/bin/spacetime
    install -m755 spacetimedb-standalone $out/bin/spacetimedb-standalone
    runHook postInstall
  '';

  meta = with lib; {
    description = "SpacetimeDB CLI - a database that runs anywhere";
    homepage = "https://spacetimedb.com";
    license = licenses.bsl11; # Converts to AGPL-3.0 after 4 years
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
    platforms = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
    mainProgram = "spacetime";
  };
}
