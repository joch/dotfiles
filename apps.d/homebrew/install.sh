#!/usr/bin/env bash

which brew > /dev/null
if [ $? -ne 0 ]; then
    if [ $OS == "linux" ]; then
        warning "Sorry, not implemented for $OS yet.."
    elif [ $OS == "darwin" ]; then
        ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
        brew install tmux zsh
        success "$app installed"
    fi
else
    warning "$app already installed, skipping..."
fi

