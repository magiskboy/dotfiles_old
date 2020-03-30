install-base:
	sudo apt install neovim tree zsh htop exuberant-ctags python-dev python3-dev mycli tldr
	curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy -o ~/.local/bin/diff-so-fancy && chmod +x ~/.local/bin/diff-so-fancy
	python3 -m pip install --user pynvim

install-utils:
	ln -sf `pwd`/scripts/utility.py ~/.local/bin/utility

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

install-mycli:
	rm -rf ~/.myclirc
	ln -sf `pwd`/myclirc ~/.myclirc

install-tmux:
	rm -f ~/.tmux.conf
	ln -sf `pwd`/tmux/tmux.conf ~/.tmux.conf

install-zsh:
	rm -rf ~/.zshrc
	rm -rf ~/.oh-my-zsh
	ln -sf `pwd`/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -sf `pwd`/zsh/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	ln -sf `pwd`/zsh/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	ln -sf `pwd`/zsh/themes/nkthanh.zsh-theme ~/.oh-my-zsh/custom/themes
