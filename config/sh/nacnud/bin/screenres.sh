#!/bin/env bash
xrandr --newmode "1280x800_60.00"   83.50  1280 1352 1480 1680  800 803 809 831 -hsync +vsync
xrandr --addmode "eDP1" 1280x800_60.00
xrandr --output "eDP1" --mode 1280x800_60.00

xrandr --output "HDMI1" --above "eDP1"
xrandr --output "HDMI1" --primary
xrandr --output "HDMI1" --auto
