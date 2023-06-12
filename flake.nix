{
  description = "Wade's devshell flake";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.neovim-flake.url = "github:TrialAndErrror/neovim-flake";
  outputs = { self, nixpkgs, flake-utils, neovim-flake }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          devShells.default = import ./default.nix { inherit pkgs; };
        }
      );
}

