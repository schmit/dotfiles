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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Commenting"
" use gcc to comment a line "
Plugin 'tpope/vim-commentary'

" Align lines using :Tab"
Plugin 'godlygeek/tabular'

" Search by selecting text in visual mode and pressing * or #"
Plugin 'nelstrom/vim-visual-star-search'

" Solarized theme
Plugin 'altercation/vim-colors-solarized'
" Tomorrow night theme
" Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" Find files using Ctrl + p"
Plugin 'ctrlpvim/ctrlp.vim'

" Ack plugin for vim, search using :Ack <searchterm>, select result
" and use O to open file at that line and close search window (or o to not
" close search window"
Plugin 'mileszs/ack.vim'

" Synax checking "
Plugin 'scrooloose/syntastic'

" Add parentheses etc around text "
Plugin 'tpope/vim-surround'

" Writing plugin "
Plugin 'reedes/vim-pencil'

"Markdown plugin "
Plugin 'plasticboy/vim-markdown'

"Latex plugin "
Plugin 'LaTeX-Box-Team/LaTeX-Box'

"Elm plugin "
Plugin 'lambdatoast/elm.vim'


"Elixir plugin "
Plugin 'elixir-lang/vim-elixir'

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
" colorscheme Tomorrow-Night

set ruler
set nowrap
set smartindent
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

" Allow math in markdown
let g:vim_markdown_math=1
" No folding in markdown
let g:vim_markdown_folding_disabled=1

" Setup writer mode using :WP
func! WordProcessorMode()
  setlocal formatoptions=1
  setlocal noexpandtab
  map j gj
  map k gk
  setlocal spell spelllang=en_us
  set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
  set complete+=s
  set formatprg=par
  setlocal wrap
  setlocal linebreak
endfu
com! WP call WordProcessorMode()

" Turn off smart indent for python
au! FileType python setl nosmartindent

" Remove Ex mode
nnoremap Q <nop>

" Showbreak character
set showbreak=↪

" Remove whitespace on filesave
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()
" End remove whitespace
