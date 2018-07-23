#  __________  _________ ___ ___   ___________                   __  .__
#  \____    / /   _____//   |   \  \_   _____/_ __  ____   _____/  |_|__| ____   ____   ______
#    /     /  \_____  \/    ~    \  |    __)|  |  \/    \_/ ___\   __\  |/  _ \ /    \ /  ___/
#   /     /_  /        \    Y    /  |     \ |  |  /   |  \  \___|  | |  (  <_> )   |  \\___ \
#  /_______ \/_______  /\___|_  /   \___  / |____/|___|  /\___  >__| |__|\____/|___|  /____  >
#          \/        \/       \/        \/             \/     \/                    \/     \/


# This file does not have access to Z_aliases.zsh aliases
# because this is sourced first. (Alphabetic By Filename)

# ^^ (This may no longe be the case (no using oh-my-zhs))

##### USER FUNCTIONS #######

# grep things without highlighting results
function ncgrep {
  grep --color=never "$@"
}

# Wrapper around pwgen. Generates passwords.
function pw {
  # These are assigned default values; Can be overriden by passed in values
  PW_LEN=${1:-12}
  NUM_OF_PW=${2:-1}
  if [ $PW_LEN == '-h' ]; then
    echo
    print 'pw is a wrapper around pwgen'
    echo
    print 'Usage   : pw <pswd length> <num of pswds>'
    print 'Default : pw 12 1'
    echo
    print 'pwgen -h for more help'
  else
    echo
    pwgen -Byns1 $PW_LEN $NUM_OF_PW
    echo
    echo 'LENGTH    : '$PW_LEN
    echo 'GENERATED : '$NUM_OF_PW
  fi
}

function ofirefox {
  firefox $(pwd)
}

function ochrome {
  google-chrome $(pwd)
}

# Define cl here so that I can show colorized PWD in first line
# when running cl. I also use this with bk, to show colorized
# PWD when going back a directory.
function cl {
  clear;

  # spectrum_ls; show all FG color codes
  # spectrum_bls; show all BG color codes
  # Must use print -P to work with $ZSH/lib/spectrum.zsh

  print -P $FG[044]$BG[235]' PWD '$reset_color$FG[235]$BG[044]'\ue0b0'$FG[000]' '$(pwd)' '$reset_color$FG[044]'\ue0b0'

  # must use this no matter which of the 2 above are used
  echo $reset_color; # must reset or other output (ls) will get messed up
  ls
}

function scat {
  pygmentize $1 | nl -ba
}

function fullupgrade {
  sudo apt dist-upgrade -y
  sudo apt autoremove -y
  sudo apt autoremove --purge # gets rid of old kernels
  sudo apt autoclean -y
}

# preform rm on all files of specified file extension
# ex. rmft txt removes all txt files in pwd
function rmft {
  if [ $# != 1 ]; then
    echo 'rmft usage: rmft <file extension>'
  elif [ $1 == '-h' ]; then
    echo 'rmft removes all files of a particular type'
    echo 'rmft usage: rmft <file extension>'
  else
    filetype=$1
    rm -v *.$filetype
  fi
}

# makes a file executable
function mke {
  chmod +x "$*"
}

function ccat {
  /bin/cat "$1" | pygmentize
}

# search history by keyword
function shist {
  # awk makes the command become the first column
  # and rearranges the original 4 columns after the
  # new first column, which is the command name itself
  history 0 | awk '{ print $4, $0 }' | ack "^$1" --nocolor
}

# shows terminal color codes with text example
function textcolors {
  for code ({000..255})
    print -P -- "$code: %F{$code}This is how your text would look%f"
  }

# copy pwd to clipboard
function cpdir {
  emulate -L zsh
  print -n $PWD | clipcopy
}

# allows for filtering list output to desired search keys
function fl {
  #if two args, first arg is directory to ls
  #second arg is search key
  if [ $# == 2 ]; then
    ls -AF $1 | ack -i --nocolor $2
    #ls -AF $1 | grep -Pi --color=never $2
    # if one arg ls is done in pwd one single
    # arg is search key
  else
    ls -AF | ack -i --nocolor $*
    #ls -AF | grep -Pi --color=never $*
  fi
}

# remove all exept for $*
function nrm {
  ls -A | grep -v "$*" | xargs rm -rf
}


#function fmgr {
  #echo "Opening $PWD in file manager..."
  #xdg-open "$PWD"
#}

# i3 version of above function for use with nautilus
function fmgr {
  gtk-launch nautilus $(pwd) 2> /dev/null &
}

function gitalias {
  alias | grep git | grep "$*"
}

function aliases {
  alias | pygmentize -l shell | grep --color=none "$*"
}

globalalias() {
  if [[ $LBUFFER =~ ' [A-Z0-9]+$' ]];then
    zle _expand_alias
    zle expand-word
  fi
  zle self-insert
}

zle -N globalalias

bindkey " " globalalias
bindkey "^ " magic-space
bindkey -M isearch " " magic-space

