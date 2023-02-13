" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

filetype on
filetype plugin off
filetype indent on

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Color scheme
colorscheme elflord

" Show file stats
set ruler

" Blink cursor on error instead of beeping
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
