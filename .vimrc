" ============================================
" Basic .vimrc for Docker Environment
" ============================================

" --- General Settings ---
set nocompatible          " Use Vim defaults (not Vi)
set encoding=utf-8        " UTF-8 encoding
set history=500           " Command history
set autoread              " Auto-reload files changed outside Vim
set hidden                " Allow switching buffers without saving

" --- UI / Display ---
set number                " Show line numbers
set relativenumber        " Relative line numbers
set cursorline            " Highlight current line
set showmatch             " Highlight matching brackets
set wildmenu              " Enhanced command-line completion
set ruler                 " Show cursor position
set laststatus=2          " Always show status line
set scrolloff=8           " Keep 8 lines above/below cursor
set wrap                  " Wrap long lines
set linebreak             " Wrap at word boundaries
set showcmd               " Show partial commands

" --- Syntax & Colors ---
syntax enable             " Enable syntax highlighting
set background=dark       " Dark background
colorscheme desert        " Built-in colorscheme (no plugins needed)

" --- Search ---
set hlsearch              " Highlight search results
set incsearch             " Incremental search
set ignorecase            " Case-insensitive search
set smartcase             " Case-sensitive if uppercase used

" --- Indentation ---
set autoindent            " Copy indent from current line
set smartindent           " Smart auto-indenting
set expandtab             " Use spaces instead of tabs
set tabstop=4             " Tab = 4 spaces
set shiftwidth=4          " Indent = 4 spaces
set softtabstop=4         " Backspace deletes 4 spaces

" --- Filetype-specific indentation ---
autocmd FileType yaml,json,html,css,js setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType makefile setlocal noexpandtab

" --- Backups & Swap ---
set nobackup              " No backup files
set nowritebackup         " No backup before overwrite
set noswapfile            " No swap files (useful in containers)

" --- Key Mappings ---
let mapleader = " "       " Space as leader key

" Clear search highlight
nnoremap <leader>h :nohlsearch<CR>

" Quick save and quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :wq<CR>

" Move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Better indenting in visual mode (keeps selection)
vnoremap < <gv
vnoremap > >gv

" Move lines up/down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" --- Clipboard ---
set clipboard=unnamedplus " Use system clipboard (if available)

" --- Performance ---
set lazyredraw            " Don't redraw during macros
set ttyfast               " Fast terminal connection

" --- Misc ---
set backspace=indent,eol,start  " Sensible backspace behavior
set noerrorbells                " No error bells
set novisualbell                " No visual bell
set timeoutlen=500              " Faster key sequence timeout
set updatetime=300              " Faster completion/updates
set pastetoggle=<F2>            " Toggle paste-mode with F2
