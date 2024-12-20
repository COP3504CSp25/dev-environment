#!/bin/sh

# Appearance
WALLPAPER_URL="https://images.unsplash.com/photo-1690946975156-ea10eb4aa051?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHJ1YmJlciUyMGR1Y2t8ZW58MHx8MHx8fDA%3D"
gsettings set org.gnome.desktop.background picture-uri-dark "$WALLPAPER_URL"
gsettings set org.gnome.desktop.background picture-uri "$WALLPAPER_URL"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
