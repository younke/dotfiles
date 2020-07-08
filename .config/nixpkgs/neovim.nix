{ config, lib, pkgs, ... }:
{
    enable = true;
    viAlias = true;
    vimAlias = true;
    
    extraConfig = builtins.readFile ./extra/init.vim;
    plugins = with pkgs.vimPlugins; [
      vim-nix
      gruvbox
      vim-surround
      vim-unimpaired
      vim-commentary
      vim-repeat
    ];
}
