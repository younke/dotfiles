{ config, pkgs, ... }:
{
    enable = true;
    vimAlias = true;
    
    plugins = with pkgs.vimPlugins; [
      vim-nix
      gruvbox
      vim-surround
      vim-unimpaired
      vim-commentary
      vim-repeat
    ];
}
