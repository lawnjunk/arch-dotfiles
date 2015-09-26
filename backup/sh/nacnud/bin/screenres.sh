#!/bin/env bash
#if (!(xrandr | grep "$EXT1 disconnected")); then
  #xrandr --newmode "1280x800_60.00"   83.50  1280 1352 1480 1680  800 803 809 831 -hsync +vsync
  #xrandr --addmode eDP-0 1280x800_60.00
  #xrandr  --output $IN --dpi 180 --mode 1280x800_60.00  --right-of $EXT1 --output $EXT1 --dpi 100 --mode 1600x900 --primary
#fi
#if (!(xrandr | grep "$EXT2 disconnected")); then
  #xrandr --newmode "1280x800_60.00"   83.50  1280 1352 1480 1680  800 803 809 831 -hsync +vsync
  #xrandr --addmode eDP-0 1280x800_60.00
  #xrandr  --output $IN --dpi 180 --mode 1280x800_60.00  --right-of $EXT2 --output $EXT2 --dpi 100 --mode 1600x900 --primary
#else 
  #echo "wat" 
  #xrandr --dpi 180 &
  #xrandr --output $auto --mode 1600x900 --output $IN --auto &
#fi


xrandr --newmode "1280x800_60.00"   83.50  1280 1352 1480 1680  800 803 809 831 -hsync +vsync
xrandr --addmode "eDP-0" 1280x800_60.00
xrandr --output "eDP-0" --mode 1280x800_60.00

xrandr --output "HDMI-0" --above "eDP-0"
xrandr --output "HDMI-0" --primary
xrandr --output "HDMI-0" --auto
