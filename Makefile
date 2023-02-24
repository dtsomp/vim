.PHONY: submodules
submodules:
	git submodule update --init --recursive

.PHONY: vimwiki
vimwiki:  ## Generate vimwiki documentation (:h vimwiki)
	vim -c 'helptags ~/.vim/pack/plugins/start/vimwiki/doc' -c quit

.PHONY: packages
packages:
	sudo apt-get install vim-gitgutter

all: submodules vimwiki

# vim: tabstop=2 shiftwidth=2 noexpandtab
