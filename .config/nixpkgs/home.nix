{ config, pkgs, ... }:

let
  relativeXDGConfigPath = ".config";
  relativeXDGDataPath = ".local/share";
  relativeXDGCachePath = ".cache";
in {
  programs.home-manager.enable = true;
  home.stateVersion = "20.03";

  xdg = {
    enable = true;
    configHome = "/Users/younke/${relativeXDGConfigPath}";
    dataHome = "/Users/younke/${relativeXDGDataPath}";
    cacheHome = "/Users/younke/${relativeXDGDataPath}";
  };

  home.packages = with pkgs; [ 
    htop
    ctags
    jq
    fzf
    ripgrep
    tree
  ];

  programs.alacritty.enable = true;
  programs.tmux.enable = true;

  programs.bat = {
    enable = true;
    config.theme = "ansi-dark";
  };

  programs.neovim = {
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
  };
}
