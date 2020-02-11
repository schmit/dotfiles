# dotfiles

My humble dotfiles

# Setup

Setup homebrew:
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Fonts

Install powerline/fonts as follows
```
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
```
Then update the fonts in iTerm2 settings to Hack.

### Vim

Install vim using brew:
`brew install vim`

Currently, using Vundle to install repos.
For a fresh install, could switch to vim-plug, see NeoVim

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

Then install all plugins using
```
:PlugInstall
```

### Fish

Install Fish using homebrew
`brew install fish`

Install oh-my-fish`
`curl -L https://get.oh-my.fish | fish`

Install plugins
`omf install git z fzf sushi`

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
