#!/bin/bash

OS="$(uname -s)"

#tmux
rm -rf ~/.tmux
cp -r tmux ~/.tmux
cp tmux.conf ~/.tmux.conf

cp -r vim ~/.vim

# nvim
rm -rf ~/.config/nvim
mkdir -p ~/.config
cp -r nvim ~/.config/nvim

# zsh
cp my.zshrc ~/.zshrc
cp my.zprofile ~/.zprofile

# Cursor keybindings (macOS only)
if [ "$OS" = "Darwin" ]; then
    sudo cp cursor_keybindings.json "$HOME/Library/Application Support/Cursor/User/keybindings.json"
fi
