set -g fish_greeting

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls lsd
alias cat 'bat --theme="Catppuccin Latte"'

starship init fish | source
