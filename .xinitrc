#idle cursor
unclutter -idle 5 &

# Ensure XDG_Runtime_dir is set
unset XDG_RUNTIME_DIR
export XDG_RUNTIME_DIR=$(mktemp -d /tmp/$(id -u)-runtime-dir.XXX)

# audio
pipewire -c /etc/pipewire/pipewire.conf  &

# display
xrandr --setprovideroutputsource modesetting NVIDIA-0 && xrandr --auto

dbus-launch --sh-syntax --exit-with-session dwm
