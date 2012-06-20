" Load the pathogen script
runtime bundle/vim-pathogen/autoload/pathogen.vim
" Auto load all the extensions
call pathogen#infect()

" Turn off vi compatibility
set nocompatible

" utf8 as default 
set encoding=utf8
set fileencoding=utf8

" syntax highlighting on
syntax on

set background=dark
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" no line wrap
set nowrap

" Set tabs to 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" show 'invisible' characters
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" line numbering on
set number
" always show status line, and configure status line
set laststatus=2
set statusline=%F%m%r%h%w[%L][%{&ff}][%{strlen(&fenc)?&fenc:&enc}]%y[%p%%][%04l,%04v]
" highlight the current line
set cursorline
" show matching bracket/paren/etc
set showmatch
" auto idnent
set autoindent
" colorscheme solarized
colorscheme solarized
if has("gui_running")
	if has('win32') || has('win64')
		set guifont=Consolas:h10
	else
		set guifont=Inconsolata\ Medium\ 10
	endif
	set guioptions-=T
	set guioptions-=m
	set guioptions-=r
endif

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set ttymouse=xterm
set mouse=a
set backspace=2
if has('win32') || has('win64')
  set backupdir=$HOME/vimfiles/vimtemp,$TMP,.
  set directory=$HOME/vimfiles/vimtemp,$TMP,.
else
	set backupdir=$HOME/.vim/vimtemp,.
	set directory=$HOME/.vim/vimtemp,.
endif
