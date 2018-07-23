let mapleader=','

syntax off
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'chriskempson/base16-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'Chiel92/vim-autoformat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'ryanoasis/vim-devicons'
call plug#end()

syntax on

set termguicolors
color base16-oceanicnext

hi Cursor guifg=black guibg=green gui=reverse
set guicursor=a:block-blinkon100-Cursor/Cursor

" VIM SETTINGS=======================
" indent settings
set autoindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set tabstop=2

" search settings
set hlsearch
set ignorecase
set incsearch
set smartcase

" text rendering settings
set encoding=utf-8
set linebreak " dont wrap in middle of word
set scrolloff=3
set sidescrolloff=5
set wrap

set laststatus=2
set noshowmode
set ruler
set wildmenu
set number
set cursorline

" zR - open all folds
" zM - close all folds
" zo - unfold area under cursor
" zc - fold area under cursor
" zO - unfold recursively under cursor
" zC - fold recursively under cursor
set foldmethod=indent
set foldnestmax=3
" uncomment to disable fold on file open
set nofoldenable

" other settings
set mouse=n
set lazyredraw
set autoread
set backspace=indent,eol,start
set confirm
set hidden
set history=1000
set noswapfile
set autowrite
set updatetime=100
" prevent auto comment on new line
autocmd BufRead,BufNewFile * setlocal formatoptions-=ro
autocmd BufWrite * :RemoveTrailingSpaces






inoremap jj <Esc>
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> cc :clo<CR>
nnoremap J }
nnoremap K {


