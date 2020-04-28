#!/bin/env zsh


ZSHCONFIG=$HOME/workspace/dotfiles/zsh

zsh_bootstrap() {
    ln -sf $ZSHCONFIG/zlogin $HOME/.zlogin
    ln -sf $ZSHCONFIG/zprofile $HOME/.zprofile
    ln -sf $ZSHCONFIG/zshenv $HOME/.zshenv
    ln -sf $ZSHCONFIG/zshrc $HOME/.zshrc
}

zsh_cleanup(){
    echo "Clean up links to resource files at ${HOME}"
    rm -f ${HOME}/.zlogin ${HOME}/.zprofile ${HOME}/.zshenv ${HOME}/.zshrc
    echo "Done!"
}

zsh_bootstrap
