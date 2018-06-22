
" Pathogen Plugin
execute pathogen#infect()

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


" HTML Binds:
" <leader> <leader> to jump to next <++>
autocmd FileType html inoremap <leader><leader> <Esc>/<++><Enter>"_c4l

" h1 
autocmd FileType html inoremap ;1 <h1></h1><Space><++><Esc>FhT>i
" h2
autocmd FileType html inoremap ;2 <h2></h2><Space><++><Esc>FhT>i
" h3
autocmd FileType html inoremap ;3 <h3></h3><Space><++><Esc>FhT>i
" bold 
autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
" paragraph 
autocmd FileType html inoremap ;p <p></p><Enter><++><Esc>2k$FpT>i
" emphatic 
autocmd FileType html inoremap ;e <em></em><Space><++><Esc>FeT>i



