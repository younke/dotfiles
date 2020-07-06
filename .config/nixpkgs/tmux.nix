# tmux.nix
{
  enable = true;
  baseIndex = 1;
  clock24 = true;
  terminal = "tmux-256color";
  extraConfig = ''
    set -ga terminal-overrides ',xterm-256color:*Tc'
    '';
}
