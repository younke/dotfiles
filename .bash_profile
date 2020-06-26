export BASH_SILENCE_DEPRECATION_WARNING=1
export VISUAL=nvim

alias la="ls -A"
alias l="ls -CF"
alias ll="ls -alF"

alias ebash="vim ~/.bash_profile"
alias sbash="source ~/.bash_profile"
alias dgit="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

function xman() { open x-man-page://$1; }
function mkcd() { mkdir -p "$1" && cd "$1"; }

export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/usr/local/sbin:$PATH" # brew

if [ -d $HOME/.asdf ]; then
	. $HOME/.asdf/asdf.sh
	. $HOME/.asdf/completions/asdf.bash
fi

# asdf installed starship
which starship > /dev/null 2>&1 && eval "$(starship init bash)"

