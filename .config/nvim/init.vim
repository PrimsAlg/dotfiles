syntax on

" Sources
source $HOME/.config/nvim/plug-config/coc.vim

" ------------------------------------------------------------
"  Plug
" ------------------------------------------------------------
call plug#begin('~/local/share/nvim/plugged')

    Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}

    " tpope da goat
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'

    " fzf
    Plug 'junegunn/fzf.vim'

    " code completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " enhance syntax highlighting
    Plug 'sheerun/vim-polyglot'

    " colorizes hex codes
    Plug 'lilydjwg/colorizer'

    " idk what these do
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'scrooloose/syntastic'
    Plug 'scrooloose/nerdcommenter'

    " Pair brackets, parens, quotes, etc.
    Plug 'jiangmiao/auto-pairs'

    " Automatically clear search highlights after cursor movement
    Plug 'haya14busa/is.vim' " TODO: replace with native vim controls to preserve smartcase

    " Open autocomplete automatically
    " Plug 'vim-scripts/AutoComplPop'

    " Code Snippets; utlisnips is engine, vim-snippets contains snippets
    " Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

    " Themes
	Plug 'dracula/vim',{'as':'dracula'}
    Plug 'arcticicestudio/nord-vim'
    Plug 'stillwwater/vim-nebula'
    Plug 'yuttie/hydrangea-vim'
    Plug 'morhetz/gruvbox'

    " lightline status line
    Plug 'itchyny/lightline.vim'

call plug#end()

" man page syntax highlighting
runtime! ftplugin/man.vim

" ------------------------------------------------------------
"  Appearance
" ------------------------------------------------------------

"  lightline settings
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename' ] ],
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

function! LightlineFilename()
    let filename = expand('%:f') !=# '' ? expand('%:f') : '[No Name]'
    let modified = &modified ? ' +' : ''
    return filename . modified
endfunction

" colorscheme
colorscheme gruvbox

" ------------------------------------------------------------
"  Variables
" ------------------------------------------------------------
set complete+=kspell
set completeopt=menuone,longest
set expandtab
set guifont=mononoki\ Nerd\ Font
set incsearch
set mouse=a
set noerrorbells
set noshowmode
set noswapfile
set nowrap
set number 
set path+=**
set relativenumber
set shiftwidth=4
set shortmess+=c
set smartindent
set smartcase
set tabstop=4 softtabstop=4
set termguicolors
set undodir=~/.config/nvim/undodir
set undofile

" Set python3 source executable
let g:python3_host_prog="/usr/bin/python3"

" UltiSnips Keybinds
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ------------------------------------------------------------
"  Keybinds
" ------------------------------------------------------------

" Leader bindings
noremap <Space> <Nop>
let mapleader=" "
nnoremap <Leader>s :w<CR>:source %<CR>

" Insert complete menu selection with return
inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"

" Makes Y copy to end of line
noremap Y y$

" ------------------------------------------------------------
"  Other
" ------------------------------------------------------------
" Allows nvim to use alacritty background
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
