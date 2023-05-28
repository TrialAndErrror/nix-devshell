{
  description = "Wade's devshell flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    wade-shell.url = "github:TrialAndErrror/nix-devshell";
  };

  outputs = { self, nixpkgs, wade-shell }:
  in {
      packages.x86_64-linux.default = self.wade-shell;
    };
}
