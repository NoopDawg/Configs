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

# ghostty
if [ "$OS" = "Darwin" ]; then
    mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"
    cp ghostty_config "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
else
    mkdir -p "$HOME/.config/ghostty"
    cp ghostty_config "$HOME/.config/ghostty/config"
fi

# Cursor keybindings (macOS only)
if [ "$OS" = "Darwin" ]; then
    sudo cp cursor_keybindings.json "$HOME/Library/Application Support/Cursor/User/keybindings.json"
fi
