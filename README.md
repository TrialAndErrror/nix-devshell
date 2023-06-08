# nix-devshell
This is a repo that hosts my current working DevShell. It is subject to change, so be sure to tag to a commit if you want stable features

## Usage
This shell is designed around running in `develop` mode, as there's no default behavior.

### If you have a Nix Config file that allows unfree packages:
```
nix develop 'github:TrialAndErrror/nix-devshell'
```

### If you don't have flakes enabled in your nix configuration (or you're unsure why the above ones didn't work):
```
nix --experimental-features 'nix-command flakes' develop 'github:TrialAndErrror/nix-devshell'
```
