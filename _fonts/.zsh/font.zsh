font="Inconsolata 13"

# Set the GNOME Terminal profile to use specified font
if command -v gconftool-2 >/dev/null 2>&1
then
    gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_system_font" --type bool false
    gconftool-2 --set "/apps/gnome-terminal/profiles/Default/font" --type string "$font"
fi
