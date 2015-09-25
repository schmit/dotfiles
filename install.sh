#!/bin/bash
echo "Installing config files in home directory"

echo "Please manually install zshrc"
# cp zshrc ~/.zshrc

cp vimrc ~/.vimrc
cp ackrc ~/.ackrc
cp tmux.conf ~/.tmux.conf

echo "Done"
