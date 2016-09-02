#!/usr/bin/env bash

echo "Deleting the old files"
rm -f ~/.vimrc
rm -rf ~/.vim
rm -f ~/.tmux.conf

echo "Symlinking files"
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

echo "Done."
