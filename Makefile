install-base:
	brew install tree zsh python3 pipenv pyenv htop ctags
	brew install --HEAD neovim

install-nvim:
	rm -rf ~/.vim
	rm -rf ~/.config/nvim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -sf `pwd`/nvim ~/.config/nvim

install-vim:
	rm -rf ~/.vimrc
	ln -sf `pwd`/vim/vimrc ~/.vimrc

install-git:
	ln -sf `pwd`/git/gitconfig ~/.gitconfig

install-bash:
	rm -rf ~/.bashrc
	ln -sf `pwd`/bash/bashrc ~/.bashrc

install-zsh:
	rm -rf ~/.zshrc
	rm -rf ~/.oh-my-zsh
	ln -sf `pwd`/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -sf `pwd`/zsh/zshrc ~/.zshrc
