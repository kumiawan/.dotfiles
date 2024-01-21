#!/usr/bin/env bash
killall -q polybar
#for wait until the procces is down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# launch bar1 & bar2
polybar example 2>&1 | tee -a /tmp/polyvar1.log & disown
