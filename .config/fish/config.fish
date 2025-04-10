set -g fish_greeting

bind tab accept-autosuggestion

alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

if not pgrep -u "$USER" ssh-agent > /dev/null
    ssh-agent -s | source
    ssh-add > /dev/null 2>&1
else
    ssh-add -l > /dev/null || ssh-add > /dev/null 2>&1
end

starship init fish | source