#!/bin/bash

# link the vimrc to ~/.vimrc
ln -f -s ~/.vim/vimrc ~/.vimrc
ln -f -s ~/.vim/gvimrc ~/.gvimrc

# Install vundle first
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install plugins
vim +PluginInstall +qall

# YCM install(with c family support) and setting
~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
ln -f -s ~/.vim/ycm_extra_conf.py ~/.ycm_extra_conf.py
