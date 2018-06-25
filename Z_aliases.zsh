
#    __  /   __|  |  |      \    |    _ _|    \     __|  __|   __|
  #       /  \__ \  __ |     _ \   |      |    _ \  \__ \  _|  \__ \
  #    ____| ____/ _| _|   _/  _\ ____| ___| _/  _\ ____/ ___| ____/


alias data='vi ~/Notes/records.json'
alias pw='pwgen -Bnys 12'

# restrict z lookup to current dir tree
alias zz='z -c'


# sudoku difficulty aliases
alias sudve="sudoku -c'very easy'"
alias sude="sudoku -c'easy'"
alias sudm="sudoku -c'medium'"
alias sudh="sudoku -c'hard'"
alias sudvh="sudoku -c'fiendish'"

alias h='~'

alias start='urserver-start --no-manager'
alias stop='urserver-stop'

alias gupdate='git pull && git submodule update --recursive'


# -R makes it so piping from pygmentize is not broken
alias less='less -R'

alias num='nl -ba'

# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'


# to update system: update; show; upgrade (in functions)
alias update='sudo apt update'
alias show='apt list --upgradable'
# upgrade is a function

alias package='apt show'
alias apl='apt list'
alias install='sudo apt install -y'

alias cp='cp -v'
# run this after changing anythin in alias or function files
# run this after adding new plugins to zshrc
alias tc='rc'
alias ppath='echo pl'
alias rx='rc'
alias stats='zsh_stats'
alias py2='python'
alias vpn='cat ~/Documents/Virus'
alias sudo='sudo '
#alias vi='vim'
alias show-kernels='linux-version list'
alias js='node'
alias evk='vi ~/.vim/plugin/my-vim-maps.vim'
alias evf='vi ~/.vim/plugin/my-vim-funcs.vim'
alias rd='rm -fvr'
alias rm='rm -v'
alias qvenv='deactivate'
alias svenv='source bin/activate'
alias ka9='killall -9'
alias bpy='bpython3-curses'
alias k9='kill -9'
alias psg='ps aux | ack --nocolor'
alias ld='ls -ld *(-/DN)' # list directories and links to directories
alias lh='ls -ld .*' # list hidden files
alias reload='exec zsh'
#alias pip='pip3'
#alias pip='sudo -H pip3'
alias gdbcmd='cat ~/source_code/.gdbCmds | less'
alias vimcmd='cat ~/source_code/.vimMoves.txt | less'
alias tv='remind ~/.config/remind/tv.rem'
alias eg='vim $HOME/.oh-my-zsh/custom/global_aliases.zsh'
alias shred='shred -u' # shreds and removes
alias mkgig="echo main >> .gitignore && echo '*make*' >> .gitignore && echo '*Make*' >> .gitignore"
alias grbh='git reset --hard'
alias server='ssh philthy@192.168.0.39'
alias gcmd='cat ~/source_code/git_aliases'
alias py='python3'
alias mv='mv -v'
alias ii='xdg-open > /dev/null 2>&1'
alias lss='tree'
alias watchnet='watch -n 0.1 nmap -sP "192.168.0.*"'

# These two not showing current freq on kubuntu
# show cpu frequency
alias clock="watch -n 0.1 'lscpu | grep MHz'"
# show cpu frequency of each individual core
alias allclock='watch -n 0.1 grep \"cpu MHz\" /proc/cpuinfo'
# This does show current freq, real time. Requires installing cpufrequtils
alias clocks='watch -n 0.1 "cpufreq-info | grep frequency\ is"'


alias temps="watch -n 0.1 sensors"
alias ef='vim $HOME/.dotfiles/myFunctions.zsh'
alias cls='clear'
#alias cl='clear && echo $fg[green]'PWD'$fg[red]':' $fg[yellow]$(pwd); ls'
alias cll='clear;ls -A'
alias clll='clear; la'
alias bk='cd ../ && cl'
alias ep='vim $HOME/.dotfiles/Z_aliases.zsh'
alias q='exit'
alias qq='tmux kill-server'
alias ev='vim $HOME/.dotfiles/.vimrc'
alias ei='vim $HOME/.dotfiles/i3.config'
alias su='sudo su'
alias rc='vim $HOME/.dotfiles/.zshrc'
alias sv='sudo --edit'
alias pyg='pygmentize'
alias md='mkdir -p'
alias chans='cat ~/Notes/philo_channels.txt | less'

