set -g fish_greeting

bind tab accept-autosuggestion

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls lsd
alias cat 'bat --theme="Catppuccin Latte"'

starship init fish | source
