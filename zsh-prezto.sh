#!/usr/bin/env bash

echo "Deleting the old files"
rm -f ~/.zshrc

echo "Symlinking files"
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/prompt_itzco_setup ~/.zprezto/modules/prompt/functions/prompt_itzco_setup

echo "Done."
