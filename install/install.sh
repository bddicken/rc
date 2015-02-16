#!/bin/bash

#
# Change system to use .*rc files from this repo
#

rm -rf ~/.vimrc ~/.profile ~/.bashrc ~/.zshrc ~/.gitconfig
ln -s ~/rc/.gitconfig ~/.gitconfig
ln -s ~/rc/.profile ~/.profile
ln -s ~/rc/.bashrc ~/.bashrc
ln -s ~/rc/.zshrc ~/.zshrc
ln -s ~/rc/.vimrc ~/.vimrc

source ~/.profile
