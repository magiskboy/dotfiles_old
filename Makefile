install-base:
	sudo apt install neovim tree zsh python3 htop ctags python-pip python3-pip python-dev python3-dev mycli bat tldr
	curl http://ftp.us.debian.org/debian/pool/main/r/rust-ripgrep/ripgrep_0.10.0-2_amd64.deb -o /tmp/ripgrep.deb && sudo dpkg -i /tmp/ripgrep.deb
	curl https://github.com/sharkdp/bat/releases/download/v0.11.0/bat_0.11.0_amd64.deb -o /tmp/bat.deb && sudo dpkg -i /tmp/bat.deb
	curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy -o ~/.local/bin/diff-so-fancy && chmod +x ~/.local/bin/diff-so-fancy
	pip install --user pynvim

install-nvim:
	rm -rf ~/.vimrc
	ln -sf `pwd`/nvim/vimrc ~/.vimrc
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
	ln -sf `pwd`/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -sf `pwd`/zsh/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	ln -sf `pwd`/zsh/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	ln -sf `pwd`/zsh/themes/nkthanh.zsh-theme ~/.oh-my-zsh/custom/themes
