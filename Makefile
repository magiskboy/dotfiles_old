install-base:
	brew install tree zsh python3 pipenv pyenv htop ctags ripgrep
	brew install --HEAD neovim
	pip install pynvim mycli
	sudo gem install terjira

install-nvim:
	rm -rf ~/.vim
	rm -rf ~/.config/nvim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -sf `pwd`/nvim ~/.config/nvim

install-git:
	ln -sf `pwd`/git/gitconfig ~/.gitconfig

install-zsh:
	rm -rf ~/.zshrc
	rm -rf ~/.oh-my-zsh
	ln -sf `pwd`/oh-my-zsh ~/.oh-my-zsh
	ln -sf `pwd`/zsh-custom/zshrc ~/.zshrc
	ln -sf `pwd`/zsh-custom/utils.zsh ~/.oh-my-zsh/custom/
	ln -sf `pwd`/zsh-custom/nkthanh.zsh-theme ~/.oh-my-zsh/custom/themes/
	ln -sf `pwd`/zsh-custom/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/
	ln -sf `pwd`/zsh-custom/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/
