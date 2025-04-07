set -g fish_greeting

bind tab accept-autosuggestion

alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls lsd
alias cat 'bat --theme="Catppuccin Latte"'

if not pgrep -u "$USER" ssh-agent > /dev/null
    eval (ssh-agent -c) > /dev/null 2>&1
    ssh-add > /dev/null 2>&1
else
    ssh-add -l > /dev/null || ssh-add > /dev/null 2>&1
end

starship init fish | source
