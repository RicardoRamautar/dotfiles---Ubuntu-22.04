#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Specify the path to your Polybar config file
CONFIG_PATH="$HOME/.config/polybar/config.ini"

# Launch Polybar, using specified config file
polybar -c $CONFIG_PATH bar1 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
