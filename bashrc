[[ $- != *i* ]] && return

eval `dircolors`

EDITOR="vim"
export EDITOR

#alias pacman="yaourt"
alias ls="ls --color=auto -l"
alias grep="grep --color=auto"

# COLORS
RED="\[\033[01;31m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
WHITE="\[\033[01;37m\]"
RESET="\[\033[00m\]"

# GIT PROMPT (http://gist.github.com/120804)
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \(\1\)/';
}
function parse_git_status {
  git status 2> /dev/null | sed -e '/(working directory clean)$/!d' | wc -l;
}
function check_git_changes {
  # tput setaf 1 = RED, tput setaf 2 = GREEN
  [ `parse_git_status` -ne 1 ] && tput setaf 1 || tput setaf 2
}
function check_git_status {
    echo "\[\$(check_git_changes)\]\$(parse_git_branch)"
}

if [[ ${EUID} == 0 ]] ; then
        PS1="${RED}\h${BLUE} \w$(check_git_status) ${BLUE}\#${RESET} "
else
        PS1="${GREEN}\h${BLUE} \w$(check_git_status) ${BLUE}\$${RESET} "
fi

HISTCONTROL=erasedups
HISTSIZE=1000
#
# ~/.bash_profile
#

[[ -f ~/.bashrc.local ]] && . ~/.bashrc.local
