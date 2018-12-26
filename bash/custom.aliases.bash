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
alias hp700='ssh -t dellavedova@hp700.statistica.unimib.it'
alias scphp700='ssh dellavedova@hp700.statistica.unimib.it:'
alias sshweb='ssh webmaster@hp700.statistica.unimib.it'
alias sshgdv='ssh gianluca@server.dellavedova.org'
alias sshalg='ssh -t dellavedova@aspic.bio.disco.unimib.it byobu'
alias sshdarwin='ssh -t dellavedova@darwin.bio.disco.unimib.it'
alias sshucr='ssh dgian@hill.cs.ucr.edu'
alias sshbeowulfucr='ssh tjiang@beowulf.ucr.edu'
alias sshclusterucr='ssh gvedova@bioinfo.ucr.edu'
alias sshtesla='ssh -t gdellavedova@tesla.disco.unimib.it'
alias sshscilx='ssh yuri@scilx.disco.unimib.it'
alias sshscilxnas='ssh yuri@dscilx.disco.unimib.it'
alias sshdatastar='ssh ux454445@dslogin.sdsc.edu'
alias sshmaria='ssh -t mariac@192.168.0.30'
alias sshserver='ssh -t dellavedova@192.168.0.90'
alias sshcarla='ssh -t cc@192.168.0.50'
alias sshpen='ssh -t dellavedova@www.pen.statistica.unimib.it'
alias sshmoodle='ssh root@elearning.statistica.unimib.it -p 9157'
alias sshparziali='ssh -t dellavedova@149.132.152.53 -p 8601'
alias sshdidattica='ssh -t gianluca@149.132.152.53 -p 8612'
alias sshvps='ssh gianluca@server.dellavedova.org'
alias sshpintron2='ssh -p 3100 root@pintron2.algolab.eu'
alias vi=vim
alias grep='grep --color=tty -d skip'
alias grpe='grep --color=tty -d skip'
alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar (%aD)%Creset" --stat --decorate'
alias gpl='git remote update -p; git rebase -p @{upstream}'
alias gp='git pull'
alias gst='git-wtf && git status -sb '
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
