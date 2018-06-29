#!/bin/sh

# needs testing

# Depends On The Following:
# zsh
# oh-my-zsh
# powerlevel9k
# powerline fonts of some type
# vim
# vim-plug

# There are other things that these dotfiles configure, but things will be absolutely broken
# without the above things installed before running this script.


VIMFUNDIR=$HOME/.vim/plugin/
ZSHDIR=$HOME/.oh-my-zsh/custom/
I3DIR=$HOME/.config/i3/

#for file in $(ls -A | grep -Ev 'linker.sh|.git|README.md'); do
  #chmod 664 $file
#done

# Check for existing config files. If exists backup in '<file>.bak'
(ls -A $HOME/.zshrc >> /dev/null 2>&1 && mv $HOME/.zshrc $HOME/.zshrc.bak)
(ls -A $HOME/.vimrc >> /dev/null 2>&1 && mv $HOME/.vimrc $HOME/.vimrc.bak)
(ls -A $I3DIR/config >> /dev/null 2>&1 && mv $I3DIR/config $I3DIR/config.bak)
(ls -A $HOME/.tern-config >> /dev/null 2>&1 && mv $HOME/.tern-config $HOME/.tern-config.bak)
(ls -A $HOME/.tmux.conf >> /dev/null 2>&1 && mv $HOME/.tmux.conf $HOME/.tmux.conf.bak)
(ls -A $HOME/.zshenv >> /dev/null 2>&1 && mv $HOME/.zshenv $HOME/.zshenv.bak)
(ls -A $VIMFUNDIR/functions.vim >> /dev/null 2>&1 && mv $VIMFUNDIR/functions.vim $VIMFUNDIR/functions.vim.bak)
(ls -A $ZSHDIR/global_aliases.zsh >> /dev/null 2>&1 && mv $ZSHDIR/global_aliases.zsh $ZSHDIR/global_aliases.zsh.bak)
(ls -A $ZSHDIR/myFunctions.zsh >> /dev/null 2>&1 && mv $ZSHDIR/myFunctions.zsh $ZSHDIR/myFunctions.zsh.bak)
(ls -A $ZSHDIR/Z_aliases.zsh >> /dev/null 2>&1 && mv $ZSHDIR/Z_aliases.zsh $ZSHDIR/Z_aliases.zsh.bak)
(ls -A $HOME/.i3status.conf >> /dev/null 2>&1 && mv $HOME/.i3status.conf $HOME/.i3status.conf.bak)

mkdir -p $VIMFUNDIR && ln -s $HOME/.dotfiles/functions.vim $VIMFUNDIR/functions.vim
mkdir -p $ZSHDIR && ln -s $HOME/.dotfiles/global_aliases.zsh $ZSHDIR/global_aliases.zsh
mkdir -p $I3DIR && ln -s $HOME/.dotfiles/i3.config $I3DIR/config
ln -s $HOME/.dotfiles/i3status.conf $HOME/.i3status.conf
ln -s $HOME/.dotfiles/myFunctions.zsh $ZSHDIR/myFunctions.zsh
ln -s $HOME/.dotfiles/Z_aliases.zsh $ZSHDIR/Z_aliases.zsh
ln -s $HOME/.dotfiles/.tern-config $HOME/.tern-config
ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/.dotfiles/.zshenv $HOME/.zshenv
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
