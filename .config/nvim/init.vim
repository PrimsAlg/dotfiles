syntax on

call plug#begin('~/local/share/nvim/plugged')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'scrooloose/syntastic'
    Plug 'scrooloose/nerdcommenter'
    Plug 'jiangmiao/auto-pairs'
    Plug 'sheerun/vim-polyglot'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'lilydjwg/colorizer'
    Plug 'wadackel/vim-dogrun'
call plug#end()

colorscheme dogrun

set guifont=Noto\ Mono\ for\ Powerline
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
" set expandtab
set smartindent
set number 
set relativenumber
set nowrap
set smartcase
set noswapfile
set undodir=~/.config/nvim/undodir
set undofile
set incsearch

let g:airline_theme = 'bubblegum'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Makes Y copy to end of line
noremap Y y$
