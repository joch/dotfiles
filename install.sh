#!/usr/bin/env bash
####
# This script installs all dotfiles in your home directory.
# Be sure to have a backup before running the install file.
# Instead of running the installer, you may want to cherrypick
# certain files if you are only interested in certain configs.
####

# Set variables
BASEDIR="`pwd`"
OS="`uname -s | tr \'[:upper:]\' \'[:lower:]\'`"

# Output prefixes
info () {
    printf "  [ \033[00;34m..\033[0m ] $1\n"
}
user () {
    printf "\r  [ \033[0;33m?\033[0m ] $1 "
}
success () {
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}
warning () {
    printf "\r\033[2K  [\033[00;33mWARN\033[0m] $1\n"
}
fail () {
    printf "\r\033[2K  [\033[00;31mFAIL\033[0m] $1\n"
    echo
    exit
}

link_file () {
    ln -s $1 $2
    success "linked $1 to $2"
}

# Check for an install.sh within each app directory
# and run it if found.
for app in apps.d/*; do
    if [ -x "$app/install.sh" ]; then
        oldpath="`pwd`"
        cd $app
        info "Installing $app..."
        . ./install.sh
        cd $oldpath
    fi
done

# Symlink all configuration files to the home directory
info "Installing file links..."
cd $BASEDIR/dotfiles.d/
find . -type d -exec mkdir -p $HOME/{} \;
find . -type f -exec ln -s $BASEDIR/dotfiles.d/{} $HOME/{} \;

