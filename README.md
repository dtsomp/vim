# My vim configuration

Clone this into ~/.vim

    git clone <repo> ~/.vim
 
## Add submodule

    git submodule add -f git://github.com/rodjek/vim-puppet.git .vim/bundle/puppet

## Remove submodule

    git submodule deinit -f path/to/submodule  #unregister
    git rm -f path/to/submodule                # delete from git

## vim-markdown-composer installation

    cd ~/.vim
    git clone https://github.com/euclio/vim-markdown-composer.git markdown-composer
    cd markdown-composer
    cargo build --release --no-default-features --features json-rpc

    # Add to end of .vimrc
    set runtimepath^=~/.vim/markdown-composer/


