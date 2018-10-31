# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# User specific aliases and functions
alias cp='cp -i'
alias mv='mv -i'

#颜色配置
black="\[\e[1;30m\]"
red="\[\e[1;31m\]"
yellow="\[\e[1;33m\]"
green="\[\e[1;32m\]"
cyan="\[\e[1;36m\]"
normal="\[\e[0m\]"

PS1="$black[$green\u@37-new \t $cyan\w$black]$cyan>$red\$(gitBranchPrompt)>\[\e[0m\]"

HISTSIZE=100000

alias grep='grep --color=auto'
alias ls='ls -F --color=auto'
alias catN='/home/work/bin/catN.sh'
