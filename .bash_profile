export BASH_SILENCE_DEPRECATION_WARNING=1
export LANG=en_RU.UTF-8
export PS1="λ "

alias la="ls -A"
alias l="ls -CF"
alias ll="ls -alF"

alias ebash="vim ~/.bash_profile"
alias sbash="source ~/.bash_profile"
alias dgit="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export PATH="$HOME/.emacs.d/bin:$PATH"

