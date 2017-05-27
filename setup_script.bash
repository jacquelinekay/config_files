#! /usr/bin/env bash

sudo apt-get install build-essential cmake git python-dev python3-dev -y

# install YCM: http://vimawesome.com/plugin/youcompleteme
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ${PWD}/vimrc ~/.vimrc
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

mv ~/.bashrc ~/bashrc-backup
ln -s ${PWD}/bashrc ~/.bashrc

# Our vimrc specifies a custom clang-format.py, link it to the hardcoded path
mkdir -p ~/.config
ln -s ${PWD}/clang-format.py ~/.config/clang-format.py


rm -rf ~/.gitconfig
ln -s ${PWD}/gitconfig ~/.gitconfig
rm -rf ~/.hgrc
ln -s ${PWD}/hgrc ~/.hgrc

# Only for xmonad setup
# ln -s ${PWD}/xmonad.hs ~/.xmonad/xmonad.hs
