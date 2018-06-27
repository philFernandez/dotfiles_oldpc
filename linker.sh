#!/bin/sh

# needs testing

VIMFUNDIR=$HOME/.vim/plugin/
ZSHDIR=$HOME/.oh-my-zsh/custom/
I3DIR=$HOME/.config/i3/

mkdir -p $VIMFUNDIR && ln -s ./functions.vim $VIMFUNDIR/functions.vim
mkdir -p $ZSHDIR && ln -s ./global_aliases.zsh $ZSHDIR/global_aliases.zsh
mkdir -p $I3DIR && ln -s ./i3.config $I3DIR/config
ln -s ./i3status.conf $HOME/.i3status.conf
ln -s ./myFunctions.zsh $ZSHDIR/myFunctions.zsh
ln -s ./Z_aliases.zsh $ZSHDIR/Z_aliases.zsh
ln -s ./.tern-config $HOME/.tern-config
ln -s ./.tmux.conf $HOME/.tmux.conf
ln -s ./.vimrc $HOME/.vimrc
ln -s ./.zshenv $HOME/.zshenv
ln -s ./.zshrc $HOME/.zshrc








