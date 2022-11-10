# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[[ -x /usr/bin/lesspipe.sh ]] && eval "$(SHELL=/bin/sh lesspipe.sh)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
. ~/.aliases

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if ! shopt -oq posix; then
  #if [ -f /usr/share/bash-completion/bash_completion ]; then
    #. /usr/share/bash-completion/bash_completion
  #elif [ -f /etc/bash_completion ]; then
    #. /etc/bash_completion
  #fi
#fi

#==> pywal <====================================================================

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
#(cat ~/.cache/wal/sequences &)

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh

#==> PS1 <======================================================================

# Fancy prompting colors
COLOR_CLEAR="\[\033[0m\]"
COLOR_BOLD="\[\033[1m"

COLOR_BLACK="\[\033[30m\]"
COLOR_RED="\[\033[31m\]"
COLOR_GREEN="\[\033[32m\]"
COLOR_YELLOW="\[\033[33m\]"
COLOR_BLUE="\[\033[34m\]"
COLOR_MAGENTA="\[\033[35m\]"
COLOR_CYAN="\[\033[36m\]"
COLOR_WHITE="\[\033[37m\]"

# Fancy prompting with Git stuffs
parse_git_dirty()
{
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "!"
}

parse_git_branch()
{
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

#export PS1='[\u@\h \W]\$ '
#export PS1="$BOLD\u@\h$GREEN\w$MAGENTA\$(parse_git_branch)$BLUE\$$CLEAR "
export PS1="$COLOR_BOLD$COLOR_RED\u@\h:$COLOR_WHITE\w$COLOR_CYAN\$(parse_git_branch)$COLOR_CLEAR\$ "
