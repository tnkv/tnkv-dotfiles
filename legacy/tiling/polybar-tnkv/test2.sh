#! /bin/bash
i=0
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    CMD="env MONITOR=${i} ~/.config/polybar/test.sh"
    env TAG_CMD="$CMD" MONITOR="$m" polybar --reload main &
    i=$((i+1))
done
