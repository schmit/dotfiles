set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'

" Autocompleters "
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'

" Status bar "
Plugin 'bling/vim-airline'

" Commenting"
" use gcc to comment a line "
Plugin 'tpope/vim-commentary'

" Align lines using :Tab"
Plugin 'godlygeek/tabular'

call vundle#end()

let SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0  " disables the autocomplete to popup whenever you press .

filetype plugin indent on

syntax on
syntax enable

set laststatus=2
set ttimeoutlen=50

set background=dark
colorscheme solarized

set ruler
set nowrap

set smartindent
set smarttab
set shiftwidth=4
set tabstop=4
set expandtab
set shiftround      " round indent to multiple of shiftwidth
set autoindent

set number
set showcmd
set showmode

set noswapfile
set nobackup
set nowb

" allow changes in buffer
set hidden

" Show $ sign at end of edit
set cpoptions+=$

" When scrolling, keep away from top and bottom
set scrolloff=5

" search highlighing
set hlsearch

" incrementally match search
set incsearch

" smart searching
set smartcase


" automatically reload file that changed on disc
set autoread

" normal backspace
set backspace=indent,eol,start

" mouse support
set mouse=a
