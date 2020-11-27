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

  vim-racket = pkgs.vimUtils.buildVimPlugin {
    name = "vim-racket";
    src = pkgs.fetchFromGitHub {
      owner = "wlangstroth";
      repo = "vim-racket";
      rev = "4dc9840cdcddf4740553c920f56435b0e016abb0";
      sha256 = "19ah9g8qi2gy1kfg7nh1cdjl7hyxk3pqd28in7jh5w760356zahg";
    };
  };

  vim-rspec = pkgs.vimUtils.buildVimPlugin {
    name = "vim-rspec";
    src = pkgs.fetchFromGitHub {
      owner = "thoughtbot";
      repo = "vim-rspec";
      rev = "52a72592b6128f4ef1557bc6e2e3eb014d8b2d38";
      sha256 = "09prk06rrbs8pgfm4iz88sp151p6pi9bl76p6macvv5nxv72d9j8";
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
      vim-fugitive
      vim-airline-themes
      vim-surround
      vim-repeat
      vim-commentary
      vim-unimpaired
      vim-dispatch

      fzf-vim
      # nvim-colorizer

      coc-nvim

      # ruby
      vim-ruby
      coc-solargraph
      vim-rspec

      #swift
      swift-vim

      # racket
      vim-racket
    ];
}
