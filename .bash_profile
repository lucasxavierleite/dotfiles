# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

#PATH="/opt/cuda/bin:$PATH"

TERM=xterm-256color

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export VISUAL=nvim
export EDITOR=nvim

export _JAVA_AWT_WM_NONREPARENTING=1
export XDG_CURRENT_DESKTOP=Unity
export XDG_SESSION_DESKTOP=Unity
export TDESKTOP_FORCE_PANEL_ICON=1
export TDESKTOP_DISABLE_TRAY_COUNTER=1
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct

export MOZ_ENABLE_WAYLAND=1
