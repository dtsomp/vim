# Self-documented Makefile: https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.DEFAULT_GOAL = help

.PHONY: help
help: ## Show the help menu
  @grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: submodules
submodules:
	git submodule update --init --recursive

.PHONY: vimwiki
vimwiki:  ## Generate vimwiki documentation (:h vimwiki)
	vim -c 'helptags ~/.vim/pack/plugins/start/vimwiki/doc' -c quit

.PHONY: packages
packages:
	sudo apt-get install vim-gitgutter

.PHONY: git_url_change
git_url_change:		## Change the origin URL from HTTPS to git
	git remote set-url origin $$(git remote get-url --push origin | sed 's|https://|git@|')
	git remote -v

.PHONY: install
install: submodules vimwiki ## Installation after a fresh `git clone`

# vim: tabstop=2 shiftwidth=2 noexpandtab
