{ pkgs ? import <nixpkgs> {}}:
  pkgs.mkShell {
    buildInputs = with pkgs; [ 
      git
      gh

      python3
      
      sublime
      neovim
      
      ripgrep
      lazygit
    ]; 

    shellHook = ''
      echo "Welcome to Wade's Nix shell!"
      echo "You have access to: 
      git
      github cli (gh)

      python3 (3.10.11)
      
      sublime
      nvim: neovim
      
      ripgrep
      lazygit"
    '';
}
