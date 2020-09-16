                   
" Don't try to be vi compatible
set nocompatible
" Use the delek colo(r scheme).
colo delek
" Enable syntax highlighting
syntax on
" Use filetype-based syntax hilighting, ftplugins, and indentation.
filetype plugin indent on

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set hlsearch
set ignorecase
set incsearch
set smartcase
set ruler
" Show line numbers
set number
" Show file stats
set ruler
" Encoding
set encoding=utf-8

" Always show what mode we're currently editing in
set showmode 
set showcmd

" Easy escaping to normal model
imap jj <esc>

" More convenient movement when lines are wrapped.
nmap j gj
nmap k gk
