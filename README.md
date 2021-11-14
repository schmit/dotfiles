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

### Utilities

`brew install git fzf`
`brew --cask install iterm2 firefox`
`brew install tmux`

Then update the fonts in iTerm2 settings to Hack.


### Python

`brew install python`
`brew install pyenv`
`brew install pyenv-virtualenv`
Find the relevant python version, e.g. using
`pyenv install --list | grep 3.10`
`pyenv install 3.10.0`

### Neovim

Install using brew:
`brew install neovim`

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
and [set fish to the default shell](https://fishshell.com/docs/current/tutorial.html#switching-to-fish)

Install [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
`curl -L https://get.oh-my.fish | fish`

Install plugins
`omf install git z fzf sashimi pyenv`

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
