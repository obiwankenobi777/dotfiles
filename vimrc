"-----------------------------------------------------------------------------
"GLOBAL SETs
"-----------------------------------------------------------------------------
set shortmess+=I
syntax on
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set expandtab
set number numberwidth=7
set relativenumber
set mouse=n
set incsearch
set encoding=utf-8
set textwidth=80
set cursorline
set showtabline=2
set ruler
set rulerformat=%15(%p%%\ %l/%L\ %c%V%)
set laststatus=2
set autowrite
set background=dark
color wildcharm

"-----------------------------------------------------------------------------
"MAPS
"-----------------------------------------------------------------------------
let mapleader="-"

"NORMAL
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader> viw<esc>a"<esc>hbi"<esc>lel
nnoremap \ dd
nnoremap <space> viw

"INSERTION
inoremap jk <esc>
inoremap <c-u> <esc>gUiwea
inoremap <c-l> <esc>la
inoremap <c-b> <esc>ba
inoremap <c-o> <esc>O
inoremap <c-d> <esc>ddi

"VISUAL
vmap \ ~

"-----------------------------------------------------------------------------
"testing commands
"-----------------------------------------------------------------------------
"inoremap ( <esc>a()<esc>ba
