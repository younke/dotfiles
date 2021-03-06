# tmux.nix
{
  enable = true;
  keyMode = "vi";
  baseIndex = 1;
  clock24 = true;
  terminal = "screen-256color";
  escapeTime = 1;
  secureSocket = false;
  extraConfig = ''
    set -ga terminal-overrides ",xterm-256color*:Tc"
    '';
}
