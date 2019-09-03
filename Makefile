install-base:
	sudo apt install neovim tree zsh python3 htop ctags python-pip python3-pip python-dev python3-dev
	pip install --user pynvim
	pip install --user pynvim

install-nvim:
	rm -rf ~/.vim
	rm -rf ~/.config/nvim
	ln -sf `pwd`/nvim ~/.config/nvim

install-git:
	ln -sf `pwd`/git/gitconfig ~/.gitconfig

install-bash:
	rm -rf ~/.bashrc
	ln -sf `pwd`/bash/bashrc ~/.bashrc

install-tmux:
	rm -rf ~/.tmux
	rm -f ~/.tmux.conf
	ln -sf `pwd`/tmux ~/.tmux
	ln -sf `pwd`/tmux/tmux.conf ~/.tmux.conf

install-zsh:
	rm -rf ~/.zshrc
	rm -rf ~/.oh-my-zsh
	ln -sf `pwd`/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -sf `pwd`/zsh/zshrc ~/.zshrc
