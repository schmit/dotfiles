
call plug#begin('~/.nvim/plugged')
Plug 'gmarik/Vundle.vim'
Plug 'tpope/vim-fugitive'

" Autocompleters "
Plug 'ervandew/supertab'
Plug 'davidhalter/jedi-vim'

" Status bar "
Plug 'bling/vim-airline'

" Commenting"
" use gcc to comment a line "
Plug 'tpope/vim-commentary'

" Adjust shiftwidth and expandtab heuristically
Plug 'tpope/vim-sleuth'

" Add parentheses etc around text "
Plug 'tpope/vim-surround'

" Align lines using :Tab"
Plug 'godlygeek/tabular'

" Search by selecting text in visual mode and pressing * or #"
Plug 'nelstrom/vim-visual-star-search'

" Solarized theme
Plug 'altercation/vim-colors-solarized'
" Tomorrow night theme
" Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" Find files using Ctrl + p"
Plug 'ctrlpvim/ctrlp.vim'

" Ack plugin for vim, search using :Ack <searchterm>, select result
" and use O to open file at that line and close search window (or o to not
" close search window"
Plug 'mileszs/ack.vim'

" Synax checking "
Plug 'scrooloose/syntastic', { 'for' : ['python', 'javascript', 'css'] }

" Writing plugin "
" Plug 'reedes/vim-pencil'

"Markdown plugin "
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

"Latex plugin "
Plug 'LaTeX-Box-Team/LaTeX-Box', { 'for': 'tex' }

"Elm plugin "
Plug 'lambdatoast/elm.vim', { 'for': 'elm' }

call plug#end()

let SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0  " disables the autocomplete to popup whenever you press .

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

