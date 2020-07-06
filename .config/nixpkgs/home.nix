{ config, pkgs, ... }@params:

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

  programs.alacritty = import ./alacritty.nix;
  programs.tmux = import ./tmux.nix;
  programs.neovim = (import ./neovim.nix) params;

  programs.bat = {
    enable = true;
    config.theme = "ansi-dark";
  };
}
