set bg=dark
syntax on

" Search
set hlsearch
set showmatch
set incsearch

" Tabs and indentation
"shiftwidth: number of spaces that ">>" will indent
set shiftwidth=4
"tabstop: tab size (in spaces)
set tabstop=4
"expandtab: convert tab to spaces
set expandtab
"Auto indentation
set ai

" Long-term undo
set undodir=~/.vim/undodir

" Enable Modeline in files
set modeline

" Custom command definitions go here:
command Checkpuppet :! puppet parser validate %
