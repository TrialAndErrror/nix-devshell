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
      
      ripgrep
      lazygit
      lazydocker
    ]; 

    shellHook = ''
      echo "Welcome to Wade's Nix shell!"
      echo "You have access to: 
      git
      github cli (gh)

      python3 (3.10.11)
      rustup
      nodejs
      yarn

      black
      prettier
      
      sublime
      nvim: neovim
      
      ripgrep
      lazygit"
    '';
}
