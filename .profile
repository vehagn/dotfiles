# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Fix screen layout
#xrandr --output DVI-D-0 --off --output HDMI-0 --primary --mode 3440x1440 --pos 0x1808 --rotate normal --output DP-5 --off --output DP-4 --off --output DP-3 --off --output DP-2 --mode 3840x2160 --pos 3440x0 --rotate left --output DP-1 --off --output DP-0 --off

#dropbox start &
#pulseaudio && pacmd set-default-sink 1
