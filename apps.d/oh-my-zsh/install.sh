#!/usr/bin/env bash
set -e

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
    mv ~/.zshrc ~/.zshrc-default
    success "$app installed"
else
    warning "$app already installed, skipping..."
fi

