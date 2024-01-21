#!/bin/sh
#
#~/.xinitrc
# Execute by startx ( run your window manager from here )

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
	[ -x "$f"] && . "$f"
	done
	unset f
fi
# composite
#exec picom &
exec i3wm
# exec startxfce4
# exec dwm
# .. or the window Manager of your choice
# polkit-agent
# /usr/libexec/xfce4-polkit &
# Window Manager Launch
#dbus-run-session bspwm
#ck-launch-session awesome
