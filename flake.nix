{
  description = "Wade's devshell flake";


inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        {

          # devShells.default = nixpkgs.mkShell {
          #   buildInputs =  [ 
          #     nixpkgs.git
          #     nixpkgs.python3
          #     nixpkgs.sublime
          #     nixpkgs.firefox
          #     nixpkgs.neovim
          #     nixpkgs.ripgrep
          #     nixpkgs.lazygit
          #     nixpkgs.gh
          #   ];
          # };
        }
      );
    }

