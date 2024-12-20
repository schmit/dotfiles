# dotfiles

My humble dotfiles

# Setup

Setup homebrew:
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Fonts

`brew install font-hack-nerd-font`

### Utilities

`brew install git fzf`
`brew --cask install iterm2 firefox`
`brew install tmux`

Then update the fonts in iTerm2 settings to Hack: settings > profiles > text.

### Python

`brew install uv`

#### Numpy, Scipy, Pandas and Jupyter

First ensure that `gfortran` is installed:
`brew install gfortran`

Then use `uv` to set up relevant virtual environments


### Neovim

Install using brew:
`brew install neovim`

Update using
```
brew update
brew upgrade neovim
```

Run the `install.sh` script to setup configuration using the [lazy package manager](https://lazy.folke.io/).

### Fish

Install Fish using homebrew
`brew install fish`
and [set fish to the default shell](https://fishshell.com/docs/current/tutorial.html#switching-to-fish)

Install [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
`curl -L https://get.oh-my.fish | fish`

Install plugins
`omf install git z fzf sashimi pyenv`

### Tmux

Install Tmux using homebrew, along with some terminal tools
`brew install tmux tree tldr`



### Ack

Install Ag using homebrew:
`brew install ag`

### Copy files to home directory

```
chmod +x install.sh
./install.sh
```
