# dotfiles

My humble dotfiles

# Setup

Setup homebrew:
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Vim

Install vim using brew:
`brew install vim`

First clone the Vundle repo:
`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Then run `:BundleInstall` in vim to download packages.

### Neovim

Install using brew:
`brew install neovim/neovim/neovim`

Update using
```
brew update
brew upgrade neovim
```

Instal vim-plug
```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


### Zsh

Install Zshell using homebrew:
`brew install zsh`

### Tmux

Install Tmux using homebrew:
`brew install tmux`

### Ack

Install Ack using homebrew:
`brew install ack`

### Copy files to home directory

```
chmod +x install.sh
./install.sh
```
