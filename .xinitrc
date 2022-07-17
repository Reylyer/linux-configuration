#!/bin/bash
#idle curso;9ur
unclutter -idle 5 &

# Ensure XDG_Runtime_dir is set
unset XDG_RUNTIME_DIR
export XDG_RUNTIME_DIR=$(mktemp -d /tmp/$(id -u)-runtime-dir.XXX)

# audio
pipewire -c /etc/pipewire/pipewire.conf  &

# display
xrandr --setprovideroutputsource modesetting NVIDIA-0 && xrandr --auto

while xsetroot -name "8=====D `date` `uptime | sed 's/.*,//'`"
do
    sleep 1
done &
exec dwm
