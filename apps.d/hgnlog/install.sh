#!/usr/bin/env bash
set -e

if [ ! -d "$HOME/.hg/ext/mercurial-cli-templates" ]; then
    mkdir -p $HOME/.hg/ext
    hg clone http://bitbucket.org/sjl/mercurial-cli-templates/ $HOME/.hg/ext/mercurial-cli-templates
    success "$app installed"
else
    info "$app already installed, upgrading..."
    cd $HOME/.hg/ext/mercurial-cli-templates
    hg pull -u
fi

