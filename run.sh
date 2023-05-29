

NIXPKGS_ALLOW_UNFREE=1 NIXPKGS_ALLOW_UNSTABLE=1 nix --experimental-features 'nix-command flakes' develop --impure "github:TrialAndErrror/nix-devshell";