if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'prettier/vim-prettier', {'do': 'yarn install', 'branch': 'release/0.x'}

Plug 'ryanoasis/vim-devicons'

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-fugitive'

Plug 'preservim/nerdtree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nathanaelkane/vim-indent-guides'

call plug#end() 

set encoding=UTF-8
set nocompatible " basically have VIM not act like VI but new
filetype off " required

filetype plugin on
filetype indent on

set history=700

" Finding Files
set path+=**

" Create the `tags` file
command! MakeTags !ctags -R .

set autoread

let mapleader = ","
let g:mapleader= ","

nmap <leader>w : w!<cr>

set so=7
set wildmenu
set wildignore=*.o,*~,*.pyc
set ruler
set cmdheight=2
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2

set noerrorbells
set novisualbell
set tm=500

set background=dark
colorscheme desert
set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set shiftwidth=4
set tabstop=4
set softtabstop=4

set ai
set si
set wrap
set cursorline
set showmatch

let python_highlight_all = 1

map j gj
map k gk

map <space> /
map <c-space> ?

map <C-n> :NERDTreeToggle<CR>

set relativenumber
set number

set foldmethod=indent
set foldlevel=99

let python_highlight_all=1
syntax on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
