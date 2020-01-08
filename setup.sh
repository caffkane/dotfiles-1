#! /usr/bin/env bash

mkdir -p ~/.config/nvim

# Removes user old vim init and symlinks
rm -rf ~/.config/nvim/init.vim 
cp vim_config.vim ~/.config/nvim/init.vim
ln -s vim_config.vim ~/.config/nvim/init.vim

# Removes user old tmux conf and symlinks
rm -rf ~/.tmux.conf
cp tmux.conf ~/.tmux.conf
ln -s tmux.conf ~/.tmux.conf

# Removes user old zshrc and symlinks
rm -rf ~/.zshrc
cp zshrc_config ~/.zshrc
ln -s zshrc_config ~/.zshrc
