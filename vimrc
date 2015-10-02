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

" Search by selecting text in visual mode and pressing * or #"
Plugin 'nelstrom/vim-visual-star-search'

" Solarized theme
Plugin 'altercation/vim-colors-solarized'

" Find files using Ctrl + p"
Plugin 'kien/ctrlp.vim'

" Ack plugin for vim, search using :Ack <searchterm>, select result
" and use O to open file at that line and close search window (or o to not
" close search window"
Plugin 'mileszs/ack.vim'

" Synax checking "
Plugin 'scrooloose/syntastic'

" Add parentheses etc around text "
Plugin 'tpope/vim-surround'

call vundle#end()

let SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0  " disables the autocomplete to popup whenever you press .

filetype plugin indent on

syntax on
syntax enable

set modelines=0 " avoids exploit

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

set ttyfast
set visualbell

set noswapfile
set nobackup
set nowb

" reload files when changed on disk
set autoread

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

" Ctrl+p for ctrlp package
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Copy-paste to OSX
set clipboard=unnamed

" more natural split and vsplit
set splitbelow
set splitright

" Use F2 to switch to paste mode in order to paste
" large amount of text. This turns off all smart indenting
set pastetoggle=<F2>


