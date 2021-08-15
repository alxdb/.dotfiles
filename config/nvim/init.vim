call plug#begin(stdpath('data') . '/plugged')
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'mboughaba/i3config.vim'
call plug#end()

set noshowmode
set termguicolors

let g:onedark_terminal_italics = 1
let g:lightline = { 'colorscheme': 'onedark' }

augroup colorset
	autocmd!
	autocmd ColorScheme * call onedark#set_highlight("Normal", {"bg": {"cterm": "NONE", "gui": "NONE"}})
augroup END
color onedark
