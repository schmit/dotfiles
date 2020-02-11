
call plug#begin('~/.nvim/plugged')
" Git integration
Plug 'tpope/vim-fugitive'
" Plug 'jreybert/vimagit'

" Autocompleters "
" Plug 'ervandew/supertab'
" Plug 'davidhalter/jedi-vim'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

" Async syntax checking "
" Plug 'w0rp/ale'

" Status bar "
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'edkolev/tmuxline.vim'

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

" Find files using Ctrl + p"
Plug 'ctrlpvim/ctrlp.vim'

" Find files using fzf "
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Highlight whitespace "
Plug 'ntpeters/vim-better-whitespace'

" Ack plugin for vim, search using :Ack <searchterm>, select result
" and use O to open file at that line and close search window (or o to not
" close search window"
Plug 'mileszs/ack.vim'

" Writing plugin "
" Plug 'reedes/vim-pencil'

"Markdown plugin "
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

"Latex plugin "
" Plug 'lervag/vimtex', { 'for': 'tex' }

"Clojure plugin "
" Plug 'tpope/vim-fireplace'
" Plug 'vim-scripts/paredit.vim'

" Go plugin "
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Send stuff to a repl "
" Plug 'jpalardy/vim-slime'

" In buffer repl "
" Plug 'metakirby5/codi.vim'

" Use black for Python formatting "
Plug 'psf/black'

" NerdTree
Plug 'scrooloose/nerdtree'
call plug#end()

" ignore files in gitignore for ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let &t_Co=256
syntax on
syntax enable

let mapleader="," "Maps leader to , instead of \

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

set wildignorecase  " ignore case in commands

set number
set showcmd
set showmode

set ttyfast
set visualbell

" no backups
set noswapfile
set nobackup
set nowb

" Show tabs and trailing spaces "
set list listchars=tab:→\ ,trail:·

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

" ignore case when no uppercase
set ignorecase
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

" Turn off smart indent for python
au! FileType python setl nosmartindent

" Set .tex to latex
let g:tex_flavor = "latex"

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

" Use Ag instead of Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Exit terminal mode with escape
:tnoremap <Esc> <C-\><C-n>

" Set tmux as vim-slime default
" let g:slime_target = "tmux"
let g:slime_target = "neovim"

" Allow the use of 256 colors in the terminal "
set t_Co=256

" start deoplete at startup
let g:deoplete#enable_at_startup = 1
"
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
set completeopt-=preview

" Auto format using Black on save
autocmd BufWritePre *.py execute ':Black'
" autocmd BufWritePre *.py 0,$!yapf

" omnifuncs
" augroup omnifuncs
"   autocmd!
"   autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"   autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"   autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"   autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"   autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" augroup end
