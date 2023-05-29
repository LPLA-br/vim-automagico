"--VIM--
set nowrap
set autoindent
set showcmd

set wildmode=longest:full
set wildmenu

set background=dark

set number
set relativenumber

set mouse=a

set clipboard=unnamedplus

call plug#begin()

	"Tema gruvbox
	Plug 'morhetz/gruvbox'
	"Barra inferior do neovim melhorada
"	Plug 'vim-airline/vim-airline'
	"linhas de identação para o código
"	Plug 'thaerkh/vim-indentguides'
	"Colorimento de hexadecimal do css
"	Plug 'gko/vim-coloresque'
	" adição automática de caracteres com fechamento
	Plug 'cohama/lexima.vim'
	" autocomplete coc-html
	Plug 'neoclide/coc.nvim', {'branch':'release'}
	"Analizador de código procura por erros Linguagem C/C++
"	Plug 'dense-analysis/ale'

call plug#end()

"tema em uso
colorscheme gruvbox

"remapeamento de atalhos
noremap <F2> :bp <ENTER>
noremap <F3> :bn <ENTER>
noremap K <up>

"ctrl + hjkl no modo insert p/ mover cursor (ascii)
inoremap <c-h> <left>
inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-l> <right>

inoremap <c-c> <ESC>
"imap <Tab> <c-n>

"Macron e braquía
inoremap <F5> ̆
inoremap <F6> ̄

