call plug#begin(stdpath('data') . '/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
call plug#end()

set termguicolors
set ts=4 sw=4
set list

if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
	set background=dark
else
	set background=light
endif
" let g:gruvbox_italic = 1
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox
colorscheme nord
hi Normal guibg=NONE ctermbg=NONE
