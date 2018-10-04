
" Pathogen Plugin
execute pathogen#infect()

" vimWIKI

" Powerline
" If installed from pip:
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Use this line if cloning from Git Hub:
"set rtp+=~/.local/lib/python3.6/site-packages/powerline/bindings/vim

" Setup
set tabstop=4			" Tabs stop at 4*<space>
set softtabstop=0 noexpandtab
set shiftwidth=4
filetype plugin on
filetype plugin indent on
syntax on
set number
set relativenumber
set nocompatible
set cursorline
set showmatch
set lazyredraw
set ruler

set laststatus=2

set incsearch
set hlsearch
hi clear SpellBad
hi SpellBad cterm=underline 

set autoindent	" indent follows line above
set smartindent	" indenting for c stuff


" KEY MAPPINGS:
map <F3> :set ignorecase! <CR>
map <F4> :set hlsearch! <CR>
map <F5> :set relativenumber! <CR>
map <F6> :setlocal spell! spelllang=en_us <CR>

map <C-n> :NERDTreeToggle<CR>

" Leaders
let mapleader=","

command! -nargs=1 Ngrep vimgrep "<args>" ~/vimmd/*.md
nnoremap <leader>[ :Ngrep
" Can use :copen to view windowed list

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
" <space> <space> to jump to next <++>
autocmd FileType html inoremap <space><space> <Esc>/<++><Enter>"_c4l

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


"PANDOC:
" even though this doesn't work i refer to this to remember how to convert.
"autocmd FileType md noremap <leader>bb :pandoc %:t --pdf-engine=xelatex -o %

"LaTeX Binds: 

" compile bind
autocmd FileType tex  noremap <leader>;; :!pdflatex %<CR>

autocmd FileType tex  inoremap <space><space> <Esc>/<++><Enter>"_c4l

