#
# ~/.bash_profile
#

PATH="$HOME/.bin:$PATH"

[[ -f ~/.bash_profile.local ]] && . ~/.bash_profile.local
[[ -f ~/.bashrc ]] && . ~/.bashrc
