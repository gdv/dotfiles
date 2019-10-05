alias h='history | le'
alias rm='rm -iv'
alias cp='cp -v'
alias mv='mv -v'
alias le="$PAGER"
alias x=exit
alias gunzip='gzip -d'
alias k9='kill -9'
alias psx='ps aux'
alias pwgen='pwgen -s -1'
alias em='emacsclient -nw'
alias lclint='splint'
alias ta='tmux attach'
alias tc='tar cfvz'
alias tt='tar tfvz'
alias tx='tar xfvz'
alias tz='tar xfvJ'
alias up='cd .. && pwd && ll'
alias cd..='cd ..'
alias vi=vim
alias grep='grep --color=tty -d skip'
alias grpe='grep --color=tty -d skip'
alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar (%aD)%Creset" --stat --decorate'
alias gpl='git remote update -p; git rebase -p @{upstream}'
alias gd='git diff  --color-words '
alias ll='ls -lpha --color=always'
alias l='ls -lph --color=always'
alias pg='ping 8.8.8.8'
alias mutt=neomutt

# Colordiff
alias diff=colordiff

# Docker
alias docker-ip=dklcip
alias docker-rm-all=dkrmac
alias docker-rmi-dangling=dkrmui
