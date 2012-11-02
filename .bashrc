#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# misc
alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -la'
alias emacs='emacs -nw'
alias semacs='sudo emacs -nw'

# pacman
alias pacs='sudo pacman -S'
alias pacrs='sudo pacman -Rs'
alias pacsyu='sudo pacman -Syyu'
alias pacsy='sudo pacman -Sy'
alias pacq='pacman -Q'

# terminal prompt
#PS1='\u@\h:\w \$ '
PS1='┌─[\[\e[0;34m\]\u\[\e[m\]@\[\e[0;34m\]\h\[\e[m\]]—[\[\e[0;34m\]\w\[\e[m\]] \n└─\$ '
