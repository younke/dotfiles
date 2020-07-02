{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  home.stateVersion = "20.03";

  programs.bat.enable = true;
  programs.rg.enable = true;
}
