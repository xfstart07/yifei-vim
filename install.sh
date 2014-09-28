#!/usr/bin/env bash

git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s ~/.vim/gvimrc ~/.gvimrc
ln -s ~/.vim/vimrc ~/.vimrc
vim +BundleInstall +qa

