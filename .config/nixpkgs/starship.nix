# starship.nix
{ config, lib, pkgs, ... }@params:
{
  enable = true;

  enableZshIntegration = false;
  enableFishIntegration = false;
}
