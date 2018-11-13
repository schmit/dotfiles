#!/bin/bash
echo "Installing config files in home directory"

echo "Please manually install zshrc"
# cp zshrc ~/.zshrc

# note nvim config file is not nvimrc
cp nvimrc ~/.config/nvim/init.vim
cp ackrc ~/.ackrc
cp tmux.conf ~/.tmux.conf
cp emacs ~/.emacs

echo "Done"
