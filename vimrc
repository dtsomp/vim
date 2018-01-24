"user of dark terminals
colorscheme ron
set bg=dark
syntax on
set ruler
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

" Folding
set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Custom shortcuts
nnoremap ,r :.w !bash<CR>

" Custom command definitions
command Checkpuppet :! puppet parser validate %
command Rspec :! while [ \! -e Rakefile ]; do cd ..; done; rake rspec
command Addvimconfig :normal mmGo<CR># vim:sw=2:ts=2:expandtab<Esc>`m

"call plug#begin('~/.vim/plugged')
"function! BuildComposer(info)
"  if a:info.status != 'unchanged' || a:info.force
"    if has('nvim')
"      !cargo build --release
"    else
"      !cargo build --release --no-default-features --features json-rpc
"    endif
"  endif
"endfunction
"
"Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
"call plug#end()
"
"
"Plug 'airblade/vim-gitgutter'
