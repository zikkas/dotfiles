#!/bin/bash

reset_timer() {
    wlrctl pointer move 0 0
}

# Something is playing
if playerctl status 2>/dev/null | grep -q "Playing"; then
    reset_timer
    exit 1 # Media is playing, do NOT dim
fi

# Some audio is outputing
if wpctl status | grep -A 10 "Streams:" | grep -q "running"; then
    reset_timer
    exit 1
fi

exit 0
