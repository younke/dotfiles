# tmux.nix
{
  enable = true;
  baseIndex = 1;
  clock24 = true;
  terminal = "screen-256color";
  extraConfig = ''
    set -ga terminal-overrides ",xterm-256color*:Tc"
    '';
}
