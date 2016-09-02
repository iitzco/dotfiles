#!/usr/bin/env bash

echo "Deleting the old files"

rm -f ~/.gitconfig

echo "Symlinking files"

ln -s ~/dotfiles/gitconfig ~/.gitconfig

echo "Done."
