{ pkgs ? import <nixpkgs> {}}:
  pkgs.mkShell {
    buildInputs = with pkgs; [ 
      git
      python3
      sublime
      firefox
      neovim
      ripgrep
      lazygit
      gh
    ]; 

    shellHook = ''
      echo "Welcome to Wade's Nix shell!"
      echo "You have access to Sublime and git."
    '';
}
