# neovim.nix
{ config, lib, pkgs, ... }:
{
    enable = true;
    viAlias = true;
    vimAlias = true;
    
    extraConfig = builtins.readFile ./extra/init.vim;

    plugins = with pkgs.vimPlugins; [
      vim-nix
      gruvbox
      jellybeans-vim

      vim-airline
      vim-airline-themes
      vim-surround
      vim-repeat
      vim-commentary
      vim-unimpaired
    ];
}
