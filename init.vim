let mapleader=','

call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'carlitux/deoplete-ternjs'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'chriskempson/base16-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'Chiel92/vim-autoformat'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
call plug#end()

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" COMPLETION ======================================
let g:SuperTabDefaultCompletionType = "context"
" this is fallback for above context option
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabClosePreviewOnPopupClose = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#filetypes = [
      \ 'jsx',
      \ 'javascript.jsx',
      \]
" =================================================

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
let g:airline#extensions#tabline#show_close_button = 0
" exposes shortcuts to move to tabs/buffes
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" ===================================

let g:NERDTreeShowHidden = 1

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

" terminal mode mappings
if has('nvim')
  " go to normal mode
  tnoremap <Esc> <C-\><C-N>
  " navigate splits with alt key while in terminal mode
  tnoremap <C-h> <C-\><C-N><C-W>h
  tnoremap <C-j> <C-\><C-N><C-W>j
  tnoremap <C-k> <C-\><C-N><C-W>k
  tnoremap <C-l> <C-\><C-N><C-W>l
endif
" insert mode mappings
inoremap jj <Esc>
" visual mode mappings
vnoremap cp "+y
" normal mode mappings
nnoremap cv "+p
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> cc :clo<CR>
nnoremap <silent> <leader><space> :nohl<CR>
nnoremap bn :bnext<CR>
nnoremap bp :bNext<CR>
nnoremap bc :bdelete!<CR>
nnoremap J }
nnoremap K {
nnoremap <space> A
