#!/bin/bash

LOCAL=$HOME/.local
MAVEN_VERSION=3.6.3
GO_VERSION=1.14.2
OS=$(uname -s | tr '[:upper:]' '[:lower:]')

function setup_base() {
    [[ -d $LOCAL/bin ]] && mkdir $LOCAL/bin
    sudo apt install install bat tldr ripgrep exuberant-ctags tree htop git curl fzf pgcli dbcli fdfind
    ln -sf $(pwd)/scripts/utility.py $LOCAL/bin/utility
}

function setup_ssh() {
    [ ! -d $HOME/.ssh ] && mkdir $HOME/.ssh
    ln -sf $(pwd)/ssh-config $HOME/.ssh/config
    ssh-keygen -f $HOME/.ssh/id_rsa
}

function setup_neovim() {
    PY_PACKAGE="psutil jedi pylint pynvim"
    python -m pip install --user $PY_PACKAGE && \
    python3 -m pip install --user $PY_PACKAGE
    NODE_PACKAGE="dockerfile-language-server-nodejs bash-language-server"
    sudo npm i -g $NODE_PACKAGE
    rm -rf ~/.vim ~/.config/nvim && \
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ln -sf $(pwd)/nvim ~/.config/nvim
}

function setup_python() {
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
    pip install pipenv
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
    GO_URL=https://dl.google.com/go/go$GO_VERSION.$OS-amd64.tar.gz
    FILENAME=$(basename $GO_URL)
    curl -LO $GO_URL && \
    tar -xzf $FILENAME -C $LOCAL && \
    rm -f $FILENAME
}

function setup_dbcli() {
    rm -rf ~/.myclirc ~/.config/pgcli
    ln -sf `pwd`/dbcli/myclirc ~/.myclirc
    mkdir -p ~/.config/pgcli
    ln -sf `pwd`/dbcli/pgclirc ~/.config/pgcli/config
}

function setup_git() {
    DIFF_SO_FANCY_URL=https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
    curl -o $DIFF_SO_FANCY_URL $LOCAL/bin/ && \
    chmod +x $LOCAL/bin/diff-so-fancy
    ln -sf $(pwd)/git/gitconfig ~/.gitconfig
}

function setup_tmux() {
    sudo apt install tmux && \
    rm -rf ~/.tmux.conf && \
    ln -sf $(pwd)/tmux/tmux.conf ~/.tmux.conf
}

function setup_zsh() {
    sudo apt install zsh && \
    rm -rf ~/.zshrc ~/.oh-my-zsh && \
    ln -sf $(pwd)/zsh/zshrc ~/.zshrc && \
    ln -sf $(pwd)/zsh/oh-my-zsh ~/.oh-my-zsh && \
    ln -sf $(pwd)/zsh/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && \
    ln -sf $(pwd)/zsh/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && \
    ln -sf $(pwd)/zsh/themes/nkthanh.zsh-theme ~/.oh-my-zsh/custom/themes
}

eval "setup_$1"
