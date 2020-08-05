{}:
let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    buildInputs = [
      pkgs.cabal-install
      pkgs.stack
      pkgs.haskell.packages.ghc883.haskell-language-server
    ];
  }