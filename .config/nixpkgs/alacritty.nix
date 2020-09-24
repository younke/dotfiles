# alacritty.nix

{ config, ... }:

let
  colorSchemes = import ./alacritty_color_schemes.nix;
  font = { 
    normal = { 
      family = "JetBrains Mono"; 
    };
    bold = { 
      family = "JetBrains Mono";
    };
    italic = { 
      family = "JetBrains Mono";
    };
    bold_italic = { 
      family = "JetBrains Mono"; 
    };
    size = 15;
  };
  tmux = "${config.home.homeDirectory}/.nix-profile/bin/tmux";
in
  { 
    enable = true;
    settings = {
      env = {
        LANG = "ru_RU.UTF-8";
        TERM = "xterm-256color";
      };

      window = {
        dimensions = {
          columns = 80;
          lines = 40;
        };

        padding = {
          x = 2;
          y = 2;
        };

        dynamic_padding = false;
        decorations = "full";
      };

      scrolling = {
        history = 10000;
        multiplier = 3;
      };

      inherit font;

      colors = colorSchemes.ayu_dark;

      cursor = {
        unfocused_hollow = false;
      };

      shell = {
        program = "/bin/bash";
        args = [
          "-l" 
          "-c" 
          "${tmux} || ${tmux} attach" 
        ];
      };
    };

    settings.key_bindings = [
  { key = "Semicolon";       mods = "Command|Shift"; command = { program = tmux; args = ["command-prompt"]; }; }
    # - { key: N,           mods: Command, action: SpawnNewInstance }
    #
  { key = "T";           mods = "Command|Shift"; command = { program = tmux; args = ["new-window" "-c" "#{pane_current_path}"]; }; }
  { key = "T";           mods = "Command|Shift|Control"; command = { program = tmux; args = ["new-session"]; }; }
  { key = "W";           mods = "Command|Shift"; command = { program = tmux; args = ["kill-pane"]; }; }
  { key = "LBracket";    mods = "Command|Shift"; command = { program = tmux; args = ["previous-window"]; }; }
  { key = "RBracket";    mods = "Command|Shift"; command = { program = tmux; args = ["next-window"]; }; }
    #
  { key = "LBracket";    mods = "Command"; command = { program = tmux; args = ["copy-mode"]; }; }
  { key = "RBracket";    mods = "Command"; command = { program = tmux; args = ["paste-buffer"]; }; }
    #
  { key = "V";           mods = "Command|Shift"; command = { program = tmux; args = ["split-window" "-h" "-c" "#{pane_current_path}"]; }; }
  { key = "S";           mods = "Command|Shift"; command = { program = tmux; args = ["split-window" "-c" "#{pane_current_path}"]; }; }
    #
  { key = "Key1";        mods = "Command"; command = { program = tmux; args = ["select-window" "-t" "1"]; }; }
  { key = "Key2";        mods = "Command"; command = { program = tmux; args = ["select-window" "-t" "2"]; }; }
  { key = "Key3";        mods = "Command"; command = { program = tmux; args = ["select-window" "-t" "3"]; }; }
  { key = "Key4";        mods = "Command"; command = { program = tmux; args = ["select-window" "-t" "4"]; }; }
  { key = "Key5";        mods = "Command"; command = { program = tmux; args = ["select-window" "-t" "5"]; }; }
  { key = "Key6";        mods = "Command"; command = { program = tmux; args = ["select-window" "-t" "6"]; }; }
  { key = "Key7";        mods = "Command"; command = { program = tmux; args = ["select-window" "-t" "7"]; }; }
  { key = "Key8";        mods = "Command"; command = { program = tmux; args = ["select-window" "-t" "8"]; }; }
  { key = "Key9";        mods = "Command"; command = { program = tmux; args = ["select-window" "-t" "9"]; }; }
  { key = "Key0";        mods = "Command"; command = { program = tmux; args = ["select-window" "-t" "0"]; }; }
    # Movement
  { key = "K";           mods = "Command"; command = { program = tmux; args = ["select-pane" "-U"]; }; }
  { key = "J";           mods = "Command"; command = { program = tmux; args = ["select-pane" "-D"]; }; }
  { key = "H";           mods = "Command"; command = { program = tmux; args = ["select-pane" "-L"]; }; }
  { key = "L";           mods = "Command"; command = { program = tmux; args = ["select-pane" "-R"]; }; }
    # Resizing
  { key = "Up";          mods = "Command"; command = { program = tmux; args = ["resize-pane" "-U" "2"]; }; }
  { key = "Down";        mods = "Command"; command = { program = tmux; args = ["resize-pane" "-D" "2"]; }; }
  { key = "Left";        mods = "Command"; command = { program = tmux; args = ["resize-pane" "-L" "2"]; }; }
  { key = "Right";       mods = "Command"; command = { program = tmux; args = ["resize-pane" "-R" "2"]; }; }
    # Rotate window
  { key = "O";           mods = "Command"; command = { program = tmux; args = ["rotate-window"]; }; }
    # Kill Pane
  { key = "X";           mods = "Command"; command = { program = tmux; args = ["confirm-before" "-p" "kill-pane #P? (y,n)" "kill-pane"]; }; }
    # Layout
  { key = "Key1";       mods = "Command|Alt"; command = { program = tmux; args = ["select-layout" "even-horizontal"]; }; }
  { key = "Key2";       mods = "Command|Alt"; command = { program = tmux; args = ["select-layout" "even-vertical"]; }; }
  { key = "Key3";       mods = "Command|Alt"; command = { program = tmux; args = ["select-layout" "main-horizontal"]; }; }
  { key = "Key4";       mods = "Command|Alt"; command = { program = tmux; args = ["select-layout" "main-vertical"]; }; }
  { key = "Key5";       mods = "Command|Alt"; command = { program = tmux; args = ["select-layout" "tiled"]; }; }
  { key = "Key0";       mods = "Command|Alt"; command = { program = tmux; args = ["next-layout"]; }; }
    # 
  { key = "W";       mods = "Command"; command = { program = tmux; args = ["choose-window"]; }; }
  { key = "S";       mods = "Command"; command = { program = tmux; args = ["choose-tree"]; }; }
  { key = "T";       mods = "Command"; command = { program = tmux; args = ["clock-mode"]; }; }
  { key = "Q";       mods = "Command"; command = { program = tmux; args = ["display-panes"]; }; }
    #
  { key = "Q";       mods = "Command"; command = { program = tmux; args = ["display-panes"]; }; }
    # - { key: D,       mods: Command, command: { program: *tmux, args: ["confirm-before" "-p" "detach? (y,n)" "detach-client"] } }
    # Renamings
  { key = "Comma";       mods = "Command"; command = { program = tmux; args = ["command-prompt" "-I" "#W" "rename-window '%%'"]; }; }
  { key = "Comma";       mods = "Command|Shift"; command = { program = tmux; args = ["command-prompt" "-I" "#S" "rename-session '%%'"]; }; }
    # Move window
    # - { key: Period,       mods: Command, command: { program: *tmux, args: ["command-prompt" "move-window -t '%%'"] } }
  ];
}
