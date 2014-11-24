#!/bin/bash

# link the vimrc to ~/.vimrc
ln -f -s ~/.vim/vimrc ~/.vimrc
ln -f -s ~/.vim/gvimrc ~/.gvimrc

# Install vundle first
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install plugins
vim +PluginInstall +qall
