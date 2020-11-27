{ config, lib, pkgs, ... }@params:

let
  comma = import (pkgs.fetchFromGitHub {
    owner = "Shopify";
    repo = "comma";
    rev = "8a0b3041e05ceb4f0d471501b80f5527594723a2";
    sha256 = "068ypgwnzfmlqw60n850bpbp9ilyy4a9s3f7adrkh3xgchnbdnd3";
  }) {};

in 

  {
    programs.home-manager.enable = true;
    home.stateVersion = "20.03";

    xdg.enable = true;

    home.packages = with pkgs; [ 
      htop
      ctags
      jq
      fzf
      ripgrep
      tree

      comma

      rubyPackages.rspec # ruby rspec
      solargraph # ruby language server
      ccls # cpp language server
    ];

    programs.alacritty = (import ./alacritty.nix) params;
    programs.tmux = import ./tmux.nix;
    programs.neovim = (import ./neovim.nix) params;
    programs.bash = (import ./bash.nix) params;
    programs.starship = (import ./starship.nix) params;
    programs.emacs = (import ./emacs.nix) params;

    programs.bat = {
      enable = true;
      config.theme = "ansi-dark";
    };
  }
