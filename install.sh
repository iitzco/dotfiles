#!/usr/bin/env bash

echo "Deleting the old files"
rm -f ~/.vimrc
rm -rf ~/.vim
rm -f ~/.gitconfig
rm -f ~/.gitignore_global
rm -f ~/.tmux.conf

echo "Symlinking files"
ln -s vimrc ~/.vimrc
ln -s vim ~/.vim
ln -s gitconfig ~/.gitconfig
ln -s gitignore_global ~/.gitignore_global
ln -s tmux.conf ~/.tmux.conf

echo "Done."
