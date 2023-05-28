{
  description = "Wade's devshell flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
      devShells.x86_64-linux.default = pkgs.mkShell {          
        buildInputs = [ 
            pkgs.git 
            pkgs.sublime
            pkgs.firefox
            pkgs.neovim
          ]; 

          shellHook = ''
            echo "Welcome to Wade's Nix shell!"
            echo "You have access to Sublime and git."
          '';
      };
      packages.x86_64-linux.default = self.devShells.x86_64-linux.default;
    };
}
