install-base:
	brew install tree zsh python3 pipenv pyenv htop ctags
	brew install --HEAD neovim

install-nvim:
	rm -rf ~/.vim
	rm -rf ~/.config/nvim
	ln -sf `pwd`/nvim ~/.config/nvim

install-git:
	ln -sf `pwd`/git/gitconfig ~/.gitconfig

install-bash:
	rm -rf ~/.bashrc
	ln -sf `pwd`/bash/bashrc ~/.bashrc

install-zsh:
	rm -rf `pwd`/oh-my-zsh/custom/*
	rm -rf ~/.zshrc
	ln -sf `pwd`/oh-my-zsh ~/.oh-my-zsh
	ln -sf `pwd`/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/zsh/plugins ~/.oh-my-zsh/custom/plugins
	ln -sf `pwd`/zsh/themes ~/.oh-my-zsh/custom/themes
