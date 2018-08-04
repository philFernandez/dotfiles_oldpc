let mapleader=','

call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'zchee/deoplete-jedi'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'chriskempson/base16-vim'
Plug 'ap/vim-css-color', { 'for': ['css', 'html', 'javascript', 'javascript.jsx', 'vim'] }
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'svermeulen/vim-easyclip'
Plug 'tpope/vim-repeat'
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

" make nvim's theme same as base16 shell theme
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
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 0 " turn of numbers in tabs
let g:airline#extensions#tabline#fnamemod = ':t' " dont show full path tabline
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#cursormode#enabled = 1
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

let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'
let g:airline#extensions#ctrlp#show_adjacent_modes = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\.git$\|node_modules'

let g:EasyClipAutoFormat = 1
let g:EasyClipUseSubstituteDefaults = 1

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
set splitbelow
set splitright
set inccommand=split
set guicursor=n-v-i:block,c-ci-ve:ver25,r-cr:hor20,o:hor50
      \,a:blinkoff400-blinkon250
      \,sm:block-blinkoff150-blinkon175

" syntax bolding
hi Question cterm=bold
hi WarningMsg cterm=bold
hi Statement cterm=bold
"hi PreProc cterm=bold
"hi Type cterm=bold
hi Conditional cterm=bold
hi Keyword cterm=bold
hi Exception cterm=bold
hi PreCondit cterm=bold
hi StorageClass cterm=bold
hi Structure cterm=bold
hi Typedef cterm=bold

hi cssClassName cterm=bold
hi jsFunction cterm=bold
hi Function cterm=bold
hi Repeat cterm=bold
hi jsReturn cterm=bold

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

" make it so inactive pane doesn't have a cursorline
autocmd BufEnter * set cursorline
autocmd BufLeave * set nocursorline

" terminal mode mappings (make same as normal mode mappings)
if has('nvim')
  " go to normal mode
  tnoremap jj <C-\><C-N>
  " navigate splits with while in terminal mode
  tnoremap <C-h> <C-\><C-N><C-W>h
  tnoremap <C-j> <C-\><C-N><C-W>j
  tnoremap <C-k> <C-\><C-N><C-W>k
  tnoremap <C-l> <C-\><C-N><C-W>l
endif

" insert mode mappings
inoremap jj <Esc>

" visual mode mappings
" copy into sys clipboard
vnoremap cp "+y

" normal mode mappings
" paste from sys clipboard
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
nnoremap <leader>sa ggVG
nnoremap <leader>ev :edit ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>l :CtrlPBuffer<CR>
" remap mark because of easy-clip
nnoremap gm m
nnoremap q :q<CR>
nnoremap <silent> <C-b><C-j> :!nodejs %<CR>
nnoremap <silent> <C-b><C-p> :!python3 %<CR>

" resize up/down split
nnoremap <silent> <F9> :resize -1<CR>
nnoremap <silent> <F10> :resize +1<CR>
" resize side to side split
nnoremap <silent> <A-F9> :vertical resize -1<CR>
nnoremap <silent><A-F10> :vertical resize +1<CR>

" plugin keymappings
let g:AutoPairsShortcutToggle = '<F12>'
nnoremap <silent> <F1> :GitGutterNextHunk<CR>
nnoremap <silent> <F2> :GitGutterPrevHunk<CR>

" show highlight group of any word under the cursor
map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

