# dotfiles

My humble dotfiles

# Setup

Setup homebrew:
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Fonts

Install a font with glyphs:

`brew install font-hack-nerd-font`

or based on [Tide](https://github.com/IlanCosman/tide?tab=readme-ov-file#fonts) (see below)

### Utilities

`brew install git jj fzf`
`brew --cask install ghostty firefox`
`brew install tmux`

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

Install `fd` for fuzzy file finding:
`brew install fd`

### Tmux

Install Tmux using homebrew, along with some terminal tools
`brew install tmux tree tldr`

### Fish

Install Fish using homebrew
`brew install fish`
and [set fish to the default shell](https://fishshell.com/docs/current/tutorial.html#switching-to-fish):
1. Find the path to fish `which fish`
2. Add fish to the list of shells: `sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'`
3. Set fish as the default: `chsh -s /opt/homebrew/bin/fish`
4. Verify by opening a new terminal and using `echo $SHELL`

Also point fish to brew:
`fish_add_path /opt/homebrew/bin`

#### Fisher

Install [fisher](https://github.com/jorgebucaran/fisher)

Install Tide:
`fisher install IlanCosman/tide@v6`

Install z:
`fisher install jethrokuan/z`

Install fzf bindings:
`fisher install PatrickF1/fzf.fish`

See [Awsm Fish](https://github.com/jorgebucaran/awsm.fish) for more


### Ripgrep

Install Ripgrep using homebrew:
`brew install ag`


### Node

Install Fast Node Manager
`brew install fnm`

and configure it:
`fnm env | source`

Install latest node version:
```
fnm install --lts
fnm default lts-latest
```

### Copy files to home directory

```
chmod +x install.sh
./install.sh
```
