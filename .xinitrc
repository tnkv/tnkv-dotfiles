xrandr --output VGA-0 --right-of LVDS
dwmblocks &
xcompmgr &
xwallpaper --zoom /home/tnkv/Wallpaper/The_Lake_5.jpg
#picom --daemon
#exec startxfce4
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
#picom --daemon
exec dwm

