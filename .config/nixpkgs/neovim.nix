# neovim.nix
{ config, lib, pkgs, ... }:
let 
  nvim-colorizer = pkgs.vimUtils.buildVimPlugin {
    name = "nvim-colorizer";
    src = pkgs.fetchFromGitHub {
      owner = "norcalli";
      repo = "nvim-colorizer.lua";
      rev = "36c610a9717cc9ec426a07c8e6bf3b3abcb139d6";
      sha256 = "0gvqdfkqf6k9q46r0vcc3nqa6w45gsvp8j4kya1bvi24vhifg2p9";
    };
  };

in

{
    enable = true;
    withNodeJs = true;
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

      # nvim-colorizer

      coc-nvim

      # ruby
      vim-ruby
      coc-solargraph

      # swift
      swift-vim
    ];
}
