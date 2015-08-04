set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
call vundle#end()

let SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0  " disables the autocomplete to popup whenever you press .

syntax on

syntax enable

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
