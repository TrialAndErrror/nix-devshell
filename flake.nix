{
  description = "Wade's devshell flake";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          devShells.default = import ./default.nix { inherit pkgs; };
          # packages.${system}.default = nixpkgs.${system}.git;
        }
      );
}

