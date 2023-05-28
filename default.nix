{ pkgs ? import <nixpkgs> {}}:
let 
  myScript = pkgs.writeScriptBin "astro" ''
    git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
  '';
  in pkgs.mkShell {
    buildInputs = with pkgs; [ 
      git
      python3
      sublime
      firefox
      neovim
      ripgrep
      lazygit
    ]; 

    shellHook = ''
      echo "Welcome to Wade's Nix shell!"
      echo "You have access to Sublime and git."
    '';
}