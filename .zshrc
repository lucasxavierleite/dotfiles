#==> general <==================================================================

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
setopt autocd extendedglob notify
bindkey -v

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# make less more friendly for non-text input files, see lesspipe(1)
[[ -x /usr/bin/lesspipe.sh ]] && eval "$(SHELL=/bin/sh lesspipe.sh)"

autoload -Uz compinit && compinit
#autoload -Uz promptinit && promptinit && prompt pure

# ==> aliases <=================================================================

[[ -f ~/.aliases.sh ]] && source ~/.aliases.sh

# ==> nnn <=====================================================================

source ${XDG_CONFIG_HOME:-$HOME/.config}/nnn/nrc.sh

#==> antigen <==================================================================

if [[ -n $SWAYSOCK || -n $WAYLAND_DISPLAY || -n $DISPLAY ]]
then
    source ~/.local/bin/antigen
    antigen init ${XDG_CONFIG_HOME:-$HOME/.config}/antigen/antigenrc.sh
fi

#==> antidote <=================================================================

#source ~/.antidote/antidote.zsh
#source ~/.zsh_plugins.zsh
