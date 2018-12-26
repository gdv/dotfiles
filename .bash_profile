#!/usr/bin/env bash

# Set my editor and git editor
export EDITOR="vim"
export GIT_EDITOR='vim'

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

# Don't check mail when opening terminal.
unset MAILCHECK

export MOST_INITFILE="~/.mostrc"
export LESS="-b1024 -iJmR ";
export LESSOPEN="/bin/lessfile %s"
export TMPDIR="/tmp"
export BROWSER=firefox
export PAGER="/bin/less"

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Git coloring
export SCM_CHECK=true
export SCM_GIT_SHOW_DETAILS=true


# LaTeX
export TEXMFHOME=~/texmf
export BIBINPUTS=~/Articoli/BibInput/:.

# Anaconda
export PATH=~/.miniconda/bin:${PATH}

# Custom environment
export PATH=~/bin:${PATH}


# Use bash completion package, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

# Set default umask
umask 0022

# added by Elpy
export PATH=~/.local/bin:"$PATH"

# Simplify shared byobu sessions
export LC_USER=gianluca.dellavedova

# Remote Jupyter
function remote-jupyter {
    let    port=$((10240 + $(date +%S)))
    echo "Notebook available at http://localhost/:${port}"
    ssh -tL "${port}":localhost:"${port}" "$1"  jupyter notebook --no-browser --port "${port}" --certfile= --port-retries=0
}

# NNTP
export NNTPSERVER=news.gmane.org

# GNU Global
export GTAGSLIBPATH=$HOME/.gtags/

# Enable **
shopt -s globstar

# Mount Google Drive
test -d ~/Documenti/AlgoLab || google-drive-ocamlfuse ~/Documenti/

# added by Anaconda3 installer
. /home/gianluca/.miniconda/etc/profile.d/conda.sh

# Linuxbrew
PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$(brew --prefix)/share/man:$MANPATH"
export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"

# Pandoc
eval "$(pandoc --bash-completion)"

# Bash-it
export BASH_IT=$HOME/.bash_it
export BASH_IT_THEME='bobby'
export BASH_IT_CUSTOM=~/Devel/dotfiles/bash
source $BASH_IT/bash_it.sh
