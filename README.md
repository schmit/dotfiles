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

### Utilities

`brew install git fzf`


### Python

`brew install python`
`brew install pyenv`
`brew install pyenv-virtualenv`


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
`omf install git z fzf sushi pyenv`

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
