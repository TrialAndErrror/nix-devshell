{
  description = "Wade's devshell flake";

  inputs = {
    editor.url = "github:TrialAndErrror/neovim-flake";
  };

  outputs = {
    self,
    nixpkgs,
    editor,
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    config.allowUnfree = true;
    # devShells.default = import ./default.nix { inherit pkgs; };
    devShells.${system}.default =
      pkgs.mkShell
      {
        buildInputs = [
          pkgs.git
          pkgs.gh
          pkgs.lazygit
          pkgs.python3
          pkgs.rustup
          pkgs.nodejs
          pkgs.yarn
          pkgs.black
          pkgs.nodePackages.prettier
          pkgs.tmux
          pkgs.ripgrep
          pkgs.lazydocker
          editor.packages.x86_64-linux.default
          # editor.devShells.default
        ];
      };
  };
}
