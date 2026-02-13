#!/bin/bash

OS="$(uname -s)"

rm -rf tmux
cp -r ~/.tmux/ tmux

cp ~/.tmux.conf tmux.conf

rm -rf vim
cp -r ~/.vim vim
#cp ~/.vimrc .

# nvim (exclude lazy-lock.json)
rm -rf nvim
mkdir -p nvim/lua/plugins
cp ~/.config/nvim/init.lua nvim/
cp -r ~/.config/nvim/lua/ nvim/lua/
rm -f nvim/lazy-lock.json

# zsh
cp ~/.zshrc my.zshrc
cp ~/.zprofile my.zprofile

# ghostty
if [ "$OS" = "Darwin" ]; then
    cp "$HOME/Library/Application Support/com.mitchellh.ghostty/config" ghostty_config
else
    cp "$HOME/.config/ghostty/config" ghostty_config
fi

# Cursor keybindings (macOS only)
if [ "$OS" = "Darwin" ]; then
    sudo ls "${HOME}/Library/Application Support/Cursor/User/"
    sudo cp "${HOME}/Library/Application Support/Cursor/User/keybindings.json" cursor_keybindings.json
fi
