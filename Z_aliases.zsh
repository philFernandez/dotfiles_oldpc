
#    __  /   __|  |  |      \    |    _ _|    \     __|  __|   __|
#       /  \__ \  __ |     _ \   |      |    _ \  \__ \  _|  \__ \
#    ____| ____/ _| _|   _/  _\ ____| ___| _/  _\ ____/ ___| ____/

alias eclim=/home/philthy/eclipse/java-photon/eclipse/eclimd
alias jc=javac
alias jr=java

alias which='which -a'

alias fm='ranger'

alias volume="watch -n 0.1 'pactl list sinks | grep -i volume'"

alias lua='lua5.3'

# closes terminal; will open in same state later
alias q='exit'
# closes individual pane or window in tmux
# kill whole tmux session
alias qq='tmux kill-server'

# alias for theme changing npm program
alias i3-style='$HOME/.i3-style/node_modules/.bin/i3-style' # https://github.com/acrisci/i3-style

# open config files in vim
alias eg='vim $HOME/.oh-my-zsh/custom/global_aliases.zsh'
alias ef='vim $HOME/.dotfiles/myFunctions.zsh'
alias ep='vim $HOME/.dotfiles/Z_aliases.zsh'
#alias ev='vim $HOME/.dotfiles/.vimrc'
alias ev='vim $HOME/.dotfiles/nvim/init.vim'
# Must be opened at symlink location for hightlighting to work
alias ei='vim $HOME/.dotfiles/config'
alias rc='vim $HOME/.dotfiles/.zshrc'

# open my records json
alias data='vi ~/Notes/records.json'
# generate secure passwords
#alias pw='pwgen -Bnys 12'
alias ppath='print -lo $path'
# restrict z lookup to current dir tree
alias zz='z -c'
alias h='~'
#alias start='urserver-start --no-manager'
#alias stop='urserver-stop'

# -R makes it so piping from pygmentize is not broken
alias less='less -R'
alias num='nl -ba'
# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade -y'
alias show='apt list --upgradable'
alias package='apt show'
alias apl='apt list'
alias install='sudo apt install -y'
alias cp='cp -v'
alias stats='zsh_stats'
alias show-kernels='linux-version list'
alias js='node'
alias rd='rm -fvr'
alias rm='rm -v'
alias ka9='killall -9'
alias k9='kill -9'
alias ld='ls -ld *(-/DN)' # list directories and links to directories
alias lh='ls -ld .*' # list hidden files
alias reload='exec zsh'
alias shred='shred -u' # shreds and removes
alias grbh='git reset --hard'
alias server='ssh philthy@192.168.0.39'
alias py='python3'
alias mv='mv -v'
alias ii='xdg-open > /dev/null 2>&1'

# These two not showing current freq on kubuntu
# show cpu frequency
alias clock="watch -n 0.1 'lscpu | grep MHz'"
# show cpu frequency of each individual core
alias allclock='watch -n 0.1 grep \"cpu MHz\" /proc/cpuinfo'
# This does show current freq, real time. Requires installing cpufrequtils
alias clocks='watch -n 0.1 "cpufreq-info | grep frequency\ is"'
alias temps="watch -n 0.1 sensors"
alias cls='clear'
alias cll='clear;ls -A'
alias clll='clear; la'
alias bk='cd ../ && cl'
#alias q='exit'
alias su='sudo su'
alias pyg='pygmentize'
alias md='mkdir -p'

