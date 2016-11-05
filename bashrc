# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source user functions
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# Source user aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi	

# Source user exports
if [ -f ~/.bash_exports ]; then
    . ~/.bash_exports
fi	

# Source git autocompletion
if [ -f /usr/share/doc/git-*/contrib/completion/git-completion.bash ]; then
	. /usr/share/doc/git-*/contrib/completion/git-completion.bash
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# regular colors
Default="\[\e[0m\]"
Grey="\[\e[1;30m\]"
Purple="\[\e[0;35m\]"
Cyan="\[\e[0;36m\]"
LightGreen="\[\e[1;32m\]"
LightRed="\[\e[1;31m\]"

PS1="$LightRed+-[$Default\u$LightGreen@$Purple\h$LightGreen \$(get_branch) $Cyan\w$LightRed]\n$LightRed+->$Default "
