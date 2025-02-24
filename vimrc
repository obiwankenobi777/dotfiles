"-----------------------------------------------------------------------------
"GLOBAL SETs
"-----------------------------------------------------------------------------
set shortmess+=I
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set number numberwidth=7
set relativenumber
set mouse=n
set incsearch
set encoding=utf-8
set textwidth=79
set cursorline
set showtabline=0
set ruler
set rulerformat=%15(%p%%\ %l/%L\ %c%V%)
set laststatus=2
set autowrite
set background=dark
color retrobox

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

"copy and paste
nnoremap <leader>c "ayy
nnoremap <leader>v "ap

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
"Autopairs
"-----------------------------------------------------------------------------

" Função para inserir pares automáticos
function! AutoPairs(char)
    let pairs = {
        \ '(': ')',
        \ '[': ']',
        \ '{': '}',
        \ '"': '"',
        \ "'": "'"
        \ }

    if has_key(pairs, a:char)
        return a:char . pairs[a:char] . "\<Left>"
    endif
    return a:char
endfunction

" Função para pular caracteres de fechamento existentes
function! SkipClosing(char)
    let next_char = getline('.')[col('.')-1]
    if next_char == a:char
        return "\<Right>"
    endif
    return a:char
endfunction

" Mapeamentos para modo insert
inoremap <expr> ( AutoPairs('(')
inoremap <expr> [ AutoPairs('[')
inoremap <expr> { AutoPairs('{')
inoremap <expr> " AutoPairs('"')
inoremap <expr> ' AutoPairs("'")
inoremap <expr> ) SkipClosing(')')
inoremap <expr> ] SkipClosing(']')
inoremap <expr> } SkipClosing('}')

