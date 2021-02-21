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
Plug 'sheerun/vim-polyglot'
call plug#end()

set termguicolors
set ts=4 sw=4
set list
set number

autocmd FileType yaml setlocal expandtab ts=2 sw=2
autocmd FileType javascript setlocal expandtab ts=2 sw=2
autocmd FileType json setlocal expandtab ts=2 sw=2
autocmd FileType jsonc setlocal expandtab ts=2 sw=2
autocmd FileType haskell setlocal expandtab ts=2 sw=2

set spelllang=en_gb
autocmd FileType markdown setlocal spell

autocmd TermOpen * setlocal nonumber
autocmd TermOpen * startinsert

let g:airline_powerline_fonts=1
set bg=dark
colorscheme nord
hi Normal guibg=NONE ctermbg=NONE


" open config file
nmap <silent> <leader>e :e $MYVIMRC<CR>
" source current file
nmap <silent> <leader>s :so %<CR>
" switch to parent of file
nmap <silent> <leader>p :cd %:h<CR>

" navigate with alt keys
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" coc settings
runtime coc.vim

