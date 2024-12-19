#!/bin/bash
echo "Installing config files in home directory"

# note nvim config file is not nvimrc
cp -R nvim ~/.config/nvim
cp ackrc ~/.ackrc
cp tmux.conf ~/.tmux.conf
cp emacs ~/.emacs

echo "Done"
