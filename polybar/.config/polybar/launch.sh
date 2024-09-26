#!/bin/bash
# Terminate already running bar instances
killall -q polybar
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch bottomBar
polybar --config=$HOME/.config/polybar/config.ini topBar &
echo "Polybar launched..."
