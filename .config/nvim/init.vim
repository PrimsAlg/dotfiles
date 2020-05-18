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
    " Themes
	Plug 'dracula/vim',{'as':'dracula'}
    Plug 'arcticicestudio/nord-vim'
    Plug 'stillwwater/vim-nebula'
    Plug 'yuttie/hydrangea-vim'
    Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox

set guifont=mononoki\ Nerd\ Font
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number 
set relativenumber
set nowrap
set smartcase
set noswapfile
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors

let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\ue0b4"
let g:airline_right_sep = "\ue0b6"

" Allows nvim to use alacritty background
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Makes Y copy to end of line
noremap Y y$
