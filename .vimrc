set history=700

filetype plugin on
filetype indent on

set autoread

let mapleader = ","
let g:mapleader= ","

nmap <leader>w : w!<cr>

set so=7
set wildmenu
set wildignore=*.o,*~,*.pyc
set ruler
set cmdheight=2
set  hid
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

syntax enable
set background=dark
colorscheme desert
set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set relativenumber
set number

set ai
set si
set wrap

map j gj
map k gk

map <space> /
map <c-space> ?

map <silent> <leader><cr> :noh<cr>
