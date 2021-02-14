call plug#begin(stdpath('data') . '/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'cespare/vim-toml'
Plug 'ekalinin/dockerfile.vim'
Plug 'joshdick/onedark.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
call plug#end()

set termguicolors
set ts=4 sw=4
set list
set number

autocmd FileType yaml setlocal expandtab ts=2 sw=2
autocmd FileType javascript setlocal expandtab ts=2 sw=2
autocmd FileType json setlocal expandtab ts=2 sw=2
autocmd FileType haskell setlocal expandtab ts=2 sw=2

set bg=dark
let g:airline_theme='gruvbox8'
colorscheme gruvbox8_hard
hi Normal guibg=NONE ctermbg=NONE

" open config file
nmap <silent> <leader>e :e $MYVIMRC<CR>
" source current file
nmap <silent> <leader>s :so %<CR>
" switch to parent of file
nmap <silent> <leader>p :cd %:h<CR>

" coc settings
runtime coc.vim

