set nocompatible " basically have VIM not act like VI but new
filetype off " required

filetype plugin on
filetype indent on

set history=700

" Finding Files
set path+=**

" FILE BROWSING:
let g:netrw_banner = 0             " disable annoying batnner
let g:netrw_browse_split = 4       " open in prior window
let g:netrw_altv = 1               " open splits right
let g:netrw_liststyle = 3          " tree view
let g:netrw_list_hide = netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

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
