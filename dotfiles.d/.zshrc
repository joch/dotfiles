# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew docker git git-flow github history-substring-search mercurial osx python sublime sudo svn tmux tmuxinator vagrant z)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Activate Z
. `brew --prefix`/etc/profile.d/z.sh

# Init boot2docker
#$(boot2docker shellinit 2>/dev/null)

# tmux
export DISABLE_AUTO_TITLE=true

export EDITOR=vim

export PATH="$HOME/go/bin:HOME/.linuxbrew/bin:$PATH"

export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"

alias gist='gist -pcs'
alias gpullall='git pull --recurse-submodules && git submodule init && git submodule update --recursive'
alias gbpurge='git branch --merged | grep -Ev "(\*|master|develop)" | xargs -n 1 git branch -d'
alias dc='docker-compose'
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'

EXTRADIR=~/.shell
if [ -d "$EXTRADIR" ]; then
  for F in `find $EXTRADIR/ -type f -o -type l | xargs`; do
    if [ "$(basename $F)" != "local" ]; then
      source $F
    fi
  done
  # Load .bash/local last to make sure it overrides all others
  test -e "$EXTRADIR/local" && source "$EXTRADIR/local"
fi

# Go stuff
export GOPATH=~/go

#eval "$(pyenv virtualenv-init -)"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
