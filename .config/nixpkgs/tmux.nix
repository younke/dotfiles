# tmux.nix
{
  keyMode = "vi";
  enable = true;
  baseIndex = 1;
  clock24 = true;
  terminal = "screen-256color";
  escapeTime = 1;
  extraConfig = ''
    set -ga terminal-overrides ",xterm-256color*:Tc"
    '';
}
