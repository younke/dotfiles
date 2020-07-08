# bash.nix
{ config, lib, pkgs, ... }@params:

let 

  shellAliases = {
    dgit = "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME";
    l = "ls -CF";
    la = "ls -A";
    ll = "ls -alF";
  };

in 

{
  enable = true;
  inherit shellAliases;

  shellOptions = [
    "histappend"
    "checkwinsize"
    "extglob"
  ];

  profileExtra = builtins.readFile ./extra/profile.bash;
  initExtra = builtins.readFile ./extra/init.bash;
}
