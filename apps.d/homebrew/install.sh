#!/usr/bin/env bash

which brew > /dev/null
if [ $? -ne 0 ]; then
    if [ $OS == "linux" ]; then
        # sudo apt-get install build-essential curl git ruby libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
        git clone https://github.com/Homebrew/linuxbrew.git ~/.linuxbrew
        success "$app installed"
    elif [ $OS == "darwin" ]; then
        ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
        brew install ag tmux zsh z
        success "$app installed"
    else
        warning "Sorry, not implemented for $OS yet.."
    fi
else
    warning "$app already installed, skipping..."
fi

