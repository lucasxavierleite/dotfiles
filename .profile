# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

if [[ -n $ZSH_VERSION ]]; then
    [[ -f $HOME/.zshrc ]] && . $HOME/.zshrc
elif [[ -n $BASH_VERSION ]]; then
    [[ -f $HOME/.bashrc ]] && . $HOME/.bashrc
fi

# set PATH so it includes user"s private bin if it exists
[[ -d $HOME/bin ]] && export PATH=$HOME/bin:$PATH
[[ -d $HOME/.local/bin ]] && export PATH=$HOME/.local/bin:$PATH

# ==> environment variables <===================================================

export VISUAL=nvim
export EDITOR=nvim

export XDG_CURRENT_DESKTOP=Unity
export XDG_SESSION_DESKTOP=Unity
export DESKTOP_SESSION=sway
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt6ct
export TDESKTOP_FORCE_PANEL_ICON=1
export TDESKTOP_DISABLE_TRAY_COUNTER=1
export MOZ_ENABLE_WAYLAND=1

export LIBSEAT_BACKEND=logind
