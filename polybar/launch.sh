#!/bin/bash

# Kill existing bars
killall -q polybar

# Wait until they are closed
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch your bar(s)
polybar upper &
polybar lower &
