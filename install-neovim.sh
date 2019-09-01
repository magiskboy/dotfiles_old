#!/bin/bash


# 1. Clone source code neovim from github
git clone git@github.com:neovim/neovim.git && cd neovim

# 2. Install the dependencies using a package manager.
sudo apt install gperf luajit luarocks libuv1-dev libluajit-5.1-dev libunibilium-dev libmsgpack-dev libtermkey-dev libvterm-dev libutf8proc-dev
sudo luarocks build mpack
sudo luarocks build lpeg
sudo luarocks build inspect

# 3. Compile and build executable from source code
make CMAKE_INSTALL_PREFIX=$HOME/.local CMAKE_BUILD_TYPE=RelWithDebInfo
make install
