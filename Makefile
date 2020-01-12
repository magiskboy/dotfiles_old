export LOCAL=$(HOME)/.local
export MAVEN_VERSION=3.6.3
export DIFF_SO_FANCY_URL=https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy


install-base:
	[[ -d $(LOCAL)/bin ]] && md $(LOCAL)/bin

install-utils:
	brew install bat tldr ripgrep ctags tree htop
	ln -sf `pwd`/scripts/utility.py $(LOCAL)/bin/utility

install-nvim:
	brew install neovim fzf
	python -m pip install --user pynvim
	python3 -m pip install --user pynvim
	rm -rf ~/.vim
	rm -rf ~/.config/nvim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -sf `pwd`/nvim ~/.config/nvim

install-java:
	curl https://www-eu.apache.org/dist/maven/maven-3/$(MAVEN_VERSION)/binaries/apache-maven-$(MAVEN_VERSION)-bin.zip -o /tmp/apache-maven-$(MAVEN_VERSION)-bin.zip && unzip /tmp/apache-maven-$(MAVEN_VERSION)-bin.zip -d $(LOCAL) && ln -sf $(LOCAL)/apache-maven-$(MAVEN_VERSION)/bin/mvn $(LOCAL)/bin

install-dbcli:
	brew install pgcli mycli
	rm -rf ~/.myvlirc
	rm -rf ~/.config/pgcli
	ln -sf `pwd`/dbcli/myclirc ~/.myclirc
	mkdir -p ~/.config/pgcli
	ln -sf `pwd`/dbcli/pgclirc ~/.config/pgcli/config

install-git:
	curl $(DIFF_SO_FANCY_URL) -o $(LOCAL)/bin/diff-so-fancy && chmod +x $(LOCAL)/bin/diff-so-fancy
	ln -sf `pwd`/git/gitconfig ~/.gitconfig

install-tmux:
	brew install tmux
	rm -rf ~/.tmux.conf
	ln -sf `pwd`/tmux/tmux.conf ~/.tmux.conf

install-zsh:
	brew install zsh
	rm -rf ~/.zshrc
	rm -rf ~/.oh-my-zsh
	ln -sf `pwd`/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -sf `pwd`/zsh/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	ln -sf `pwd`/zsh/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	ln -sf `pwd`/zsh/themes/nkthanh.zsh-theme ~/.oh-my-zsh/custom/themes
