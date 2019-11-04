" Plugins {
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
call plug#end()
" }

" auto start deoplete
let g:deoplete#enable_at_startup = 1

" enable files to be hidden
set hidden 

" <TAB>: completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" line indicator {
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
" }

" spaces and tabs {
set expandtab       " tabs sao espacos
set autoindent      " habilita autoidentar
set tabstop=4       " numero visual de espacos por tab
set softtabstop=4   " numero de espacos no tab ao editar
set shiftwidth=4    " numero de espacos ao autoidentar
" }

" lintin config {
" }

" colorscheme {
set termguicolors   " enable true colors
let ayucolor="dark" " set ayu dark theme
colorscheme ayu
set background=dark
" }

" shootcuts {
" leader key shootcuts
let mapleader="\<space>"    " set leader key
nnoremap <leader>q :q<cr>
nnoremap <leader>x :q<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>p :tabp<cr>
nnoremap <leader>n :tabn<cr>
nnoremap <leader>e :tabedit<space>

" ctrl+ shootcuts
nnoremap <C-E> :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <C-S> :source ~/.config/nvim/init.vim<cr>
nnoremap <C-P> :Files<cr>
nnoremap <C-F> :Ag<space>
nnoremap <C-B> :NERDTree<cr>

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }
