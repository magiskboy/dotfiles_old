#!/bin/bash

LOCAL=$HOME/.local
MAVEN_VERSION=3.6.3
GO_VERSION=1.14.2

function base() {
    [[ -d $LOCAL/bin ]] && md $LOCAL/bin
    brew install bat tldr ripgrep ctags tree htop
    ln -sf $(pwd)/scripts/utility.py $LOCAL/bin/utility
}

function setup_neovim() {
    PY_PACKAGE="pynvim psutil jedi pylint"
    brew install neovim fzf
    python -m pip install --user $PY_PACKAGE && \
    python3 -m pip install --user $PY_PACKAGE
    rm -rf ~/.vim ~/.config/nvim && \
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ln -sf $(pwd)/nvim ~/.config/nvim
}

function setup_java() {
    MAVEN_URL=https://www-eu.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.zip
    FILENAME=$(basename $MAVEN_URL)
    curl -LO $MAVEN_URL && \
    unzip $FILENAME -d $LOCAL && \
    ln -sf $LOCAL/apache-maven-$MAVEN_VERSION/bin/mvn $LOCAL/bin
    rm -f $FILENAME
}

function setup_go() {
    GO_URL=https://dl.google.com/go/go$GO_VERSION.darwin-amd64.tar.gz
    FILENAME=$(basename $GO_URL)
    curl -LO $GO_URL && \
    tar -xzf $FILENAME -C $LOCAL && \
    rm -f $FILENAME
}

function setup_dbcli() {
    brew install pgcli mycli
    rm -rf ~/.myclirc ~/.config/pgcli
    ln -sf `pwd`/dbcli/myclirc ~/.myclirc
    mkdir -p ~/.config/pgcli
    ln -sf `pwd`/dbcli/pgclirc ~/.config/pgcli/config
}

function setup_git() {
    DIFF_SO_FANCY_URL=https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
    curl -O $DIFF_SO_FANCY_URL $LOCAL/bin/diff-so-fancy && \
    chmod +x $LOCAL/bin/diff-so-fancy
    ln -sf $(pwd)/git/gitconfig ~/.gitconfig
}

function setup_tmux() {
    brew install tmux && \
    rm -rf ~/.tmux.conf && \
    ln -sf $(pwd)/tmux/tmux.conf ~/.tmux.conf
}

function setup_zsh() {
    brew install zsh && \
    rm -rf ~/.zshrc && \
    rm -rf ~/.oh-my-zsh && \
    ln -sf $(pwd)/zsh/zshrc ~/.zshrc && \
    ln -sf $(pwd)/zsh/oh-my-zsh ~/.oh-my-zsh && \
    ln -sf $(pwd)/zsh/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && \
    ln -sf $(pwd)/zsh/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && \
    ln -sf $(pwd)/zsh/themes/nkthanh.zsh-theme ~/.oh-my-zsh/custom/themes
}

eval "setup_$1"
