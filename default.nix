{ pkgs ? import <nixpkgs> {}}:
  pkgs.mkShell {
    buildInputs = with pkgs; [ 
      git
      gh

      python3
      rustup
      nodejs
      yarn

      black
      nodePackages.prettier
      
      sublime
      neovim
      
      tmux
      ripgrep
      lazygit
      lazydocker
    ]; 

    shellHook = ''
      # Header
      echo " _____     ______     __   __   ______     __  __     ______     __         __        ";
      echo "/\  __-.  /\  ___\   /\ \ / /  /\  ___\   /\ \_\ \   /\  ___\   /\ \       /\ \       ";
      echo "\ \ \/\ \ \ \  __\   \ \ \'/   \ \___  \  \ \  __ \  \ \  __\   \ \ \____  \ \ \____  ";
      echo " \ \____-  \ \_____\  \ \__|    \/\_____\  \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\ ";
      echo "  \/____/   \/_____/   \/_/      \/_____/   \/_/\/_/   \/_____/   \/_____/   \/_____/ ";
      echo "                                                                                      ";
      
      git
      github cli (gh)
      lazygit
      
      python3 (3.10.11)
      black

      rustup
      
      nodejs
      yarn
      prettier
      
      sublime
      nvim (vanilla neovim)
      
      tmux
      ripgrep
      lazydocker
      "
    '';
}
