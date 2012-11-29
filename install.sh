#! /bin/sh

rm -rf ~/.vim > /dev/null 2>&1
rm -rf ~/.vimrc > /dev/null 2>&1
mkdir -p ~/.vim
ln -s ~/vim_bundle/autoload ~/.vim/autoload
ln -s ~/vim_bundle/colors ~/.vim/colors
ln -s ~/vim_bundle/.vimrc ~/.vimrc
