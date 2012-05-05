runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set nocompatible
syntax on

set background=dark
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set nowrap
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set number
set laststatus=2
set statusline=%F%m%r%h%w[%L][%{&ff}][%{strlen(&fenc)?&fenc:&enc}]%y[%p%%][%04l,%04v]
set cursorline
set showmatch
set autoindent
set encoding=utf8
set fileencoding=utf8
colorscheme xoria256
if has("gui_running")
	if has('win32') || has('win64')
		set guifont=Consolas:h10
	else
		set guifont=Inconsolata\ Medium\ 10
	endif
	colorscheme moria
	set guioptions-=T
	set guioptions-=m
	set guioptions-=r
endif

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set ttymouse=xterm
set mouse=a
set backspace=2
if has('win32') || has('win64')
else
	set backupdir=~/.vim/.vimtemp,.
	set directory=~/.vim/.vimtemp,.
endif
