install-base:
	sudo apt install neovim tree zsh python3 htop ctags python-pip python3-pip python-dev python3-dev mycli
	curl http://ftp.us.debian.org/debian/pool/main/r/rust-ripgrep/ripgrep_0.10.0-2_amd64.deb -o /tmp/ripgrep.deb && sudo dpkg -i /tmp/ripgrep.deb
	pip install --user pynvim

install-nvim:
	rm -rf ~/.vim
	rm -rf ~/.config/nvim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -sf `pwd`/nvim ~/.config/nvim

install-git:
	ln -sf `pwd`/git/gitconfig ~/.gitconfig

install-tmux:
	rm -rf ~/.tmux
	rm -f ~/.tmux.conf
	ln -sf `pwd`/tmux ~/.tmux
	ln -sf `pwd`/tmux/config/.tmux.conf ~/.tmux.conf
	ln -sf `pwd`/tmux/config/.tmux.conf.local ~/.tmux.conf.local

install-zsh:
	rm -rf ~/.zshrc
	rm -rf ~/.oh-my-zsh
	ln -sf `pwd`/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -sf `pwd`/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/zsh/themes/nkthanh ~/.oh-my-zsh/custom/themes/
