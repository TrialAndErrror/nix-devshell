{
  description = "Wade's devshell flake";

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    packages.x86_64-linux.default = pkgs.nushell;
    devShells.${system}.default =
      pkgs.mkShell
      {
        buildInputs = with pkgs; [
          # Like a shell, but better
          nushell

          # Git tools
          git
          gh

          # Python tools
          python3
          black
          poetry

          # Rust tools
          rustup
          cargo
          bacon # rust debugging

          # JS tools
          nodejs
          yarn
          nodePackages.prettier

          # Command line tools
          exa # better ls
          du-dust # disk usage
          bat # syntax highlighting on cat

          zellij # better tmux
          mprocs # monitor long running processes

          ripgrep # fast search

          lazydocker
          gitui # lazygit replacement

          # include neovim-flake
          # editor.packages.x86_64-linux.default
        ];
        shellHook = ''

          alias ls="exa -lha@ --git";
          echo " _____     ______     __   __   ______     __  __     ______     __         __        ";
          echo "/\  __-.  /\  ___\   /\ \ / /  /\  ___\   /\ \_\ \   /\  ___\   /\ \       /\ \       ";
          echo "\ \ \/\ \ \ \  __\   \ \ \'/   \ \___  \  \ \  __ \  \ \  __\   \ \ \____  \ \ \____  ";
          echo " \ \____-  \ \_____\  \ \__|    \/\_____\  \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\ ";
          echo "  \/____/   \/_____/   \/_/      \/_____/   \/_/\/_/   \/_____/   \/_____/   \/_____/ ";
          echo "                                                                                      ";
        '';
      };
  };
}
