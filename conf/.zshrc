# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="wedisagree"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

alias ls="ls -F --color=auto"
alias ll='ls -al'
alias grep='grep --color=auto'
alias tmux="tmux attach"
alias tm="tmuxifier load-session"

hash -d HTML_SSP="/home/workspace/html5client/"
hash -d WEB_SSP="/home/workspace/web/"
hash -d OLDWEB_SSP="/home/workspace/server-parent/"
hash -d FLASH_SSP="~/workspace/Schoolshape/"

export PATH=$PATH:~/.cabal/bin:~/.xmonad/bin:~/.tmuxifier/bin
# If not running interactively, do not do anything
# export EDITOR=vim
eval "$(tmuxifier init -)"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ant bower bundler cabal coffee colored-man colorize \
    command-not-found copydir copyfile cp debian dircycle gem mvn node npm\
    safe-paste scala sbt tmux web-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
