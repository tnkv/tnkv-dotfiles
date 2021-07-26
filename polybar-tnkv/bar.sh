#!/usr/bin/env bash
killall -q polybar
polybar --config=~/.config/polybar/config.ini main 2>&1 | tee -a /tmp/polybar1.log & disown

