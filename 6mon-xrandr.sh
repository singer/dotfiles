#!/bin/sh
set -x
xrandr --output DisplayPort-1-0 --mode 1920x1080 --pos 3840x1080 --rotate normal \
--output DP-0 --mode 1920x1080 --pos 0x1080 --rotate normal \
--output DP-2 --mode 1920x1080 --pos 1920x0 --rotate normal \
--output DP-4 --mode 1920x1080 --pos 3840x0 --rotate normal \
--output HDMI-0 --mode 1920x1080 --pos 1920x1080 --rotate normal \
--output DisplayPort-1-1 --mode 1920x1080 --pos 0x0 --rotate normal 
