#~/bin/bash

#
# Change system to use .*rc files from this repo
#

echo "source ~/rc/.profile" > ~/.profile
echo "source ~/rc/.bashrc" > ~/.bashrc
rm -rf ~/.vimrc
ln -s ~/rc/.vimrc ~/.vimrc

source ~/.profile
