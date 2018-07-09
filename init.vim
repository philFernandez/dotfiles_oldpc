let mapleader=","

call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'scrooloose/nerdcommenter'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs'
call plug#end()


" THEME
"set t_Co=256
set termguicolors
set background=dark
colorscheme materialbox
let g:airline_theme = 'base16_ashes'
" ===================================


" COMPLETION ========================

let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" tern
let g:deoplete#sources#ternjs#docs = 1
" ===================================


" AIRLINE ===========================

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline#extensions#cursormode#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 0 " turn of numbers in tabs
let g:airline#extensions#tabline#fnamemod = ':t' " dont show full path tabline
" ===================================

" NVIM SETTINGS
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
set number
set cursorline
set foldmethod=indent
set foldnestmax=3
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
"set signcolumn=yes
set updatetime=100

" KEY MAPS
tnoremap <Esc> <C-\><C-n>
inoremap jj <Esc>
nnoremap cc :clo<cr>
nnoremap <leader>f :NERDTreeToggle<cr>
nnoremap <leader><space> :nohl<cr>
nnoremap J <C-D>
nnoremap K <C-U>
nnoremap <space> A
