{
  description = "Wade's devshell flake";



  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem
    (system: let
      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      packages = flake-utils.lib.flattenTree {
        inherit (pkgs) hello;
      };



      devShells.default = pkgs.mkShell {
        buildInputs =  [ 
          pkgs.git
          pkgs.python3
          pkgs.sublime
          pkgs.firefox
          pkgs.neovim
          pkgs.ripgrep
          pkgs.lazygit
          pkgs.gh
        ];
      };
    });
}
