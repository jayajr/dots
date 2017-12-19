#!/bin/bash

# Terminate already running bar instances
killall -9 polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2

polybar main &

# polybar topbar &
# polybar top &
# polybar bottom &

echo "Bars launched..."
