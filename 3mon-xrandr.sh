#!/bin/sh
set -x
xrandr --addmode DP-2 1680x1050
xrandr --output DP-2 --mode 1680x1050 --pos 0x0 --rotate normal --output HDMI-3 --mode 1920x1080 --pos 3600x0 --rotate normal --output HDMI-1 --off --output DP-1 --primary --mode 1920x1080 --pos 1680x0 --rotate normal --output HDMI-2 --off
