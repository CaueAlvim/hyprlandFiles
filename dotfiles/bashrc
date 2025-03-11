#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias progresso='watch -d grep -e Dirty: -e Writeback: /proc/meminfo'

PS1='[\u@\h \W]\$ '

export EDITOR=nano

eval "$(starship init bash)"
