let mapleader=','

call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'chriskempson/base16-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
call plug#end()

set termguicolors
"set background=dark
color base16-oceanicnext
set number

inoremap jj <Esc>
nnoremap <leader>f :NERDTreeToggle<CR>





