~/.screenlayout/screen.sh
picom --daemon
xwallpaper --zoom /home/tnkv/build/tnkv-dotfiles/wallpaper.jpg
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
exec dwm

