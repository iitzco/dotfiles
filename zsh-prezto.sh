#!/usr/bin/env bash

echo "Deleting the old files"
rm -f ~/.zshrc

echo "Symlinking files"
ln -s zshrc ~/.zshrc
ls -s prompt_itzco_setup ~/.zprezto/modules/prompt/functions/prompt_itzco_setup

echo "Done."
