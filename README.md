# dotfiles

My humble dotfiles

## Using chezmoi (recommended)

This repo is organized as a chezmoi source. To apply:

1) Install chezmoi: `brew install chezmoi`

2) From this directory, initialize and apply:

```
chezmoi init --source="$(pwd)" --apply
```

What gets installed:
- `~/.tmux.conf` from `dot_tmux.conf`
- `~/.emacs` from `dot_emacs`
- `~/.config/nvim/**` from `dot_config/nvim/**`
- `~/.config/ghostty/config` from `dot_config/ghostty/config`
- `~/.config/fish/**` from `dot_config/fish/**`

Bootstrap: On first apply, chezmoi runs `run_once_*` scripts to install Homebrew & common tools and set Fish as the default shell on macOS.

Note: Repo/development files like `.vscode/`, `.jj/`, and `README.md` are ignored via `.chezmoiignore`.

# Setup

Setup Homebrew (if needed):
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

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

Configuration is managed by chezmoi in `~/.config/nvim` and uses the [lazy](https://lazy.folke.io/) plugin manager.

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

Note: If you applied via chezmoi, a `run_once_20-fish-defaults.sh.tmpl` takes care of adding Fish to `/etc/shells` and setting it as the default shell (you may be prompted for your password). A Fish `conf.d` snippet also adds Homebrew to your PATH and initializes `fnm`.

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
`brew install ripgrep`


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
