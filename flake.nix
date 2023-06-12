{
  description = "Wade's devshell flake";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.neovim-flake.url = "github:TrialAndErrror/neovim-flake";
  outputs = { self, nixpkgs, flake-utils, neovim-flake }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          devShells.default = pkgs.mkShell { 
  	  	    buildInputs = with pkgs; [ 
              git
      		    gh
              lazygit

              python3
              rustup
              nodejs
              yarn

              black
              nodePackages.prettier
            
              # neovim
              tmux
              ripgrep
              lazydocker
      		  ]; 

            shellHook = ''
              echo " _____     ______     __   __   ______     __  __     ______     __         __        ";
              echo "/\  __-.  /\  ___\   /\ \ / /  /\  ___\   /\ \_\ \   /\  ___\   /\ \       /\ \       ";
              echo "\ \ \/\ \ \ \  __\   \ \ \'/   \ \___  \  \ \  __ \  \ \  __\   \ \ \____  \ \ \____  ";
              echo " \ \____-  \ \_____\  \ \__|    \/\_____\  \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\ ";
              echo "  \/____/   \/_____/   \/_/      \/_____/   \/_/\/_/   \/_____/   \/_____/   \/_____/ ";
              echo "                                                                                      ";
              
              echo "
              git
              github cli (gh)
              lazygit
              
              python3 (3.10.11)
              black

              rustup
              
              nodejs
              yarn
              prettier
              
              nvim (vanilla neovim)
              tmux
              ripgrep
              lazydocker
              "
            '';
          };
	       }
      );
}

