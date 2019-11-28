install-base:
	mkdir ~/.local/bin
	brew install tree zsh python3 htop ctags ripgrep mycli pgcli tldr bat
	curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy -o ~/.local/bin/diff-so-fancy && chmod +x ~/.local/bin/diff-so-fancy
	brew install --HEAD neovim
	python -m pip install --user pynvim
	python3 -m pip install --user pynvim pipenv pgcli mycli
	sudo gem install terjira

install-nvim:
	rm -rf ~/.vim
	rm -rf ~/.config/nvim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -sf `pwd`/nvim ~/.config/nvim

install-dbcli:
	rm -rf ~/.myvlirc
	rm -rf ~/.config/pgcli
	ln -sf `pwd`/dbcli/myclirc ~/.myclirc
	mkdir -p ~/.config/pgcli
	ln -sf `pwd`/dbcli/pgclirc ~/.config/pgcli/config

install-git:
	ln -sf `pwd`/git/gitconfig ~/.gitconfig

install-tmux:
	rm -rf ~/.tmux.conf
	ln -sf `pwd`/tmux/tmux.conf ~/.tmux.conf

install-zsh:
	rm -rf ~/.zshrc
	rm -rf ~/.oh-my-zsh
	ln -sf `pwd`/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -sf `pwd`/zsh/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	ln -sf `pwd`/zsh/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	ln -sf `pwd`/zsh/themes/nkthanh.zsh-theme ~/.oh-my-zsh/custom/themes
