# start tmux session
if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi

# modules
autoload -U compinit promptinit zcalc zsh-mime-setup
compinit
promptinit
zsh-mime-setup

# insert sudo
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

# extract files
extract () {
    if [ -f $1 ]; then
	case $1 in
             *.tar.bz2)   tar xjf $1      ;;
	     *.tar.xz)    tar -xJf $1	   ;;
             *.tar.gz)    tar xzf $1       ;;
             *.bz2)       bunzip2 $1       ;;
             *.rar)       unrar e $1       ;;
             *.gz)        gunzip $1        ;;
             *.tar)       tar xf $1        ;;
             *.tbz2)      tar xjf $1       ;;
             *.tgz)       tar xzf $1       ;;
             *.zip)       unzip $1         ;;
             *.Z)         uncompress $1    ;;
             *.7z)        7z x $1          ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
             esac
	else
             echo "'$1' is not a valid file"
     fi
}

# yum aliases
alias yi='sudo yum install'
alias yr='sudo yum remove'
alias yu='sudo yum update'
alias ys='sudo yum search'
alias yl='sudo yum list'
alias ycu='sudo yum check-update'
alias yli='sudo yum localinstall --nogpgcheck'

# cd aliases
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias df='df -h'
alias du='du -h'

alias ls='ls -hF --color=tty'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias less='less -r'
alias whence='type -a'
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias destep='./.scripts/screenfetch-dev -t'

PROMPT='%n@%M:%~%# '
