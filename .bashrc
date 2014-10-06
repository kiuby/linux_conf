#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


### My configuration ####
#transset-df .7
#export LANG=en_US.UTF-8
#export SSH_ASKPASS=ssh-askpass

# DDISABLE SEAHORSE ASKPASS, ESPECIALLY FOR GIT
#SSH_ASKPASS=/usr/lib/seahorse/seahorse-ssh-askpass



#unset SSH_ASKPASS
#alias startx='ssh-agent startx'


