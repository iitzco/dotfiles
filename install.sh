#!/usr/bin/env bash

echo "Deleting the old files"
rm -f ~/.vimrc
rm -rf ~/.vim
rm -f ~/.gitconfig
rm -f ~/.gitignore_global
rm -f ~/.tmux.conf

echo "Symlinking files"
ln -sr vimrc ~/.vimrc
ln -sr vim ~/.vim
ln -sr gitconfig ~/.gitconfig
ln -sr gitignore_global ~/.gitignore_global
ln -sr tmux.conf ~/.tmux.conf

echo "Done."
