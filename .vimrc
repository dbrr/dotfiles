
" Pathogen Plugin
"execute pathogen#infect()

set tabstop=4

filetype plugin on
syntax on
set number
set relativenumber
set nocompatible
set cursorline
set showmatch
set lazyredraw
set ruler

set incsearch
set hlsearch

" indent follows line above
set autoindent
" indenting for c stuff
set smartindent

" KEY MAPPINGS:
map <F3> :set ignorecase! <CR>
map <F4> :set hlsearch! <CR>
map <F5> :set relativenumber! <CR>
map <F6> :setlocal spell! spelllang=en_us <CR>

map <C-n> :NERDTreeToggle<CR>

let mapleader=","

map <leader>tn :tabnew<CR>
map <leader>tw :tabnext<CR>
map <leader>tq :-tabnext<CR>

" FINDING FILES:
set path+=**

" display all matching files when using tab complete
set wildmenu

" create tags file
command! MakeTags !ctags -R



" HTML BINDS


