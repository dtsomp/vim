# My vim configuration

Clone this into ~/.vim

    git clone <repo> ~/.vim


## vim-markdown-composer installation

    cd ~/.vim
    git clone https://github.com/euclio/vim-markdown-composer.git markdown-composer
    cd markdown-composer
    cargo build --release --no-default-features --features json-rpc

    # Add to end of .vimrc
    set runtimepath^=~/.vim/markdown-composer/


