" Plugins {
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()
" }


set hidden          " 
" Indicador lateral de linha
set number          " habilita o indicador
set relativenumber  " habilita o indicador relativo
" }

" Espacos e tab {
set expandtab       " tabs sao espacos
set autoindent      " habilita autoidentar
set tabstop=4       " numero visual de espacos por tab
set softtabstop=4   " numero de espacos no tab ao editar
set shiftwidth=4    " numero de espacos ao autoidentar
" }

" Estilizaçao {
set background=dark
" }

" Atalhos {
let mapleader="\<space>"    " tecla atalho leader
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
" }
