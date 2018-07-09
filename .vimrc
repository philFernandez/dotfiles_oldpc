let mapleader=','

" VIM-PLUG ==========================
call plug#begin('~/.vim/plugged')
Plug 'tmux-plugins/vim-tmux-focus-events' " make tmux and vim play nice
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/duoduo'
Plug 'chriskempson/base16-vim'  " installs many colorschemes
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'Chiel92/vim-autoformat'
Plug 'Valloric/YouCompleteMe'
Plug 'christoomey/vim-tmux-navigator'
Plug 'svermeulen/vim-easyclip'
Plug 'christoomey/vim-system-copy'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
Plug 'elzr/vim-json', { 'for': 'json' }
call plug#end()
" ===================================

set guifont=Source\ Code\ Pro\ for\ Powerline\ 12


" THEME =============================
syntax on
if (has("termguicolors"))
  set termguicolors
endif

"colorscheme base16-ashes
colorscheme base16-eighties

"let g:airline_theme = 'base16_ashes'
let g:airline_theme = 'base16_eighties'

" need these here (after all other color settings) for it to work in tmux
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" ===================================


" AIRLINE ===========================
let cursormode_color_map = {
      \ "n":      "#FFFFFF",
      \ "i":      "#0000FF",
      \ "v":      "#00FF00",
      \ "V":      "#FF0000",
      \ "\<C-V>": "#FFFF00"
      \}

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


" COMPLETION=========================
set complete-=i " limits the files searched for completions
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_seed_identifiers_with_syntax = 1
" ===================================


" CTRLP =============================
" <c-o> open
" <c-f> <c-b> cycle modes
" <c-j> <c-k> navigate results
" <c-t> open in tab
" <c-v> open v-split
" <c-x> open split
"let g:ctrlp_working_path_mode = 'c'

" make ctrlp open in buffer mode
"let g:ctrlp_cmd = "CtrlPBuffer"

let g:airline#extensions#ctrlp#show_adjacent_modes = 0
let g:ctrlp_custom_ignore = "node_modules"
" ===================================


" EASY CLIP =========================
let g:EasyClipAutoFormat = 1
" ===================================


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

" ui settings
" Make all themes use duoduo like bold settings
" Need use guifg/guibg with termguicolors setting on
hi WildMenu guifg=DarkRed
hi Question cterm=bold
hi WarningMsg cterm=bold
hi Statement cterm=bold
hi PreProc cterm=bold
hi Type cterm=bold
hi Conditional cterm=bold
hi Keyword cterm=bold
hi Exception cterm=bold
hi PreCondit cterm=bold
hi StorageClass cterm=bold
hi Structure cterm=bold
hi Typedef cterm=bold
set laststatus=2
set noshowmode
set ruler
set wildmenu
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
set signcolumn=yes
set updatetime=100
set ttymouse=xterm2 " allow resize splits w mouse in tmux
" prevent auto comment on new line
autocmd BufRead,BufNewFile * setlocal formatoptions-=ro
autocmd BufWrite * :RemoveTrailingSpaces
" reload any outside changes
au FocusGained,BufEnter * :checktime
" ===================================


" KEYMAPS ===========================
inoremap jj <Esc>
nnoremap <silent> <leader><space> :nohl<CR>
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>l :CtrlPBuffer<CR>
nnoremap <silent> bp :bN<CR>
nnoremap <silent> bn :bn<CR>
nnoremap <silent> bc :bd<CR>
nnoremap <silent> cc :clo<CR>
nnoremap <silent> <space> A
nnoremap <leader>sv :source ~/.vimrc<CR> :nohl<CR>
nnoremap <leader>sa ggVG
nnoremap J <C-D>
nnoremap K <C-U>
" remap mark because of easy clip
nnoremap gm m
" ===================================

