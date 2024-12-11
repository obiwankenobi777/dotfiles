"------------------------------MYINIT.VIM------------------------------------
"-------------------------------GLOBAL_SETS----------------------------------

"remove mensagem inicial
set shortmess+=I

"ativa sintaxe
syntax on

"número de linhas
set number              

"value default on vim is: 4
set numberwidth=6

"poem a linha em evindencia
set relativenumber

"exibe o modo:insert, visual, normal
set showmode            

"mostra no status o comando inserido
set showcmd            

"salva ao trocar de buffer
set autowrite                  

"mostra a aba com 4 esp. de largura
set tabstop=4          

"mostra guia com 4 esp. de largura
set softtabstop=4      

"recuo com 4 esp.
set shiftwidth=4        

"tab insere 4 esp.
set expandtab          

"insere novo nível extra de recuo
set smartindent        

"suporte ao mouse
set mouse=a            

"destaca linha atual do cursor
set cursorline

"igonara o case na pesquisa
"set ignorecase          

"considera o case cajo haja um case maiusculo
set smartcase          

"auto identação
set autoindent          

"colorir palavra pesquisada
set incsearch          

"menu sobreposto de comandos
set wildmenu            

"destacar comando na parte inferior
set laststatus=2        

"menu mais informativo
set confirm            

"titulo do arquivo na aba do terminal
set title              

"régua para posição do cursor
setlocal ruler          

"ShowMatch
setlocal showmatch

"tamanho da linha
setlocal textwidth=80  

"codificação em utf-8
set encoding=utf-8      

"no backup files
set nobackup            

"No backup files
set nowritebackup      

"Cursor in block for neovim
set guicursor=i:block

"background
set background=dark  

"----------------------------MAP--------------------------------------------
"leader
let mapleader="-"

"converte a palavra sob o curso em maiuscula
inoremap <c-u> <esc>gUiwea

"movimenta o cursor: left, right
inoremap <c-l> <esc>la
inoremap <c-b> <esc>ba

"movimenta o cursor: top, start, end
inoremap <c-z> <esc>zta
"inoremap <c-s> <esc>$a

"adiciona uma linha acima
inoremap <c-o> <esc>O

"remove a linha atual do cursor
inoremap <c-d> <esc>ddi

"sai do modo insertion para normal
inoremap jk <esc>

"coloca a palavra sob o cursor entre aspas duplas
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

"abri o .vimrc na vertical
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"source no .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"mapeia dd para a tecla \
nnoremap \ dd

"seleciona a palavra no modo visual
nnoremap <space> viw

"coloca o que esta selecionado em uppercase or lowercase no visual mode
vmap \ ~ 

"-------------------------------PLUGINS--------------------------------------
call plug#begin()
Plug        'jiangmiao/auto-pairs'
Plug        'vim-airline/vim-airline'
Plug        'vim-airline/vim-airline-themes'
Plug        'ryanoasis/vim-devicons'
Plug        'preservim/nerdtree'
Plug        'morhetz/gruvbox'
call plug#end()

"--------------------------------AIRLINE-------------------------------------
let g:airline#extensions#whitespace#enabled= 0 
let g:ailine_symbols_ascii = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme = 'serene'
color wildcharm

"--------------------------------GRUVBOX-------------------------------------
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_number_column='orange'
let g:gruvbox_hls_cursor='none'
let g:gruvbox_sign_column='bg0_h'
let g:gruvbox_color_column='bg0_h'
"colorscheme retrobox

"--------------------------------NERDTREE------------------------------------
nnoremap <c-t> :NERDTreeToggle<CR>
nnoremap <c-n> :NERDTree<CR>
nnoremap <c-f> :NERDTreeFind<CR>
"----------------------------------------------------------------------------
