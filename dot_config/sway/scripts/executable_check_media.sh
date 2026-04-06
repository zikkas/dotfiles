#!/bin/bash

reset_timer() {
    wlrctl pointer click 11
}

# Something is playing
if playerctl status 2>/dev/null | grep -q "Playing"; then
    reset_timer
    exit 1
fi

# Some audio is outputing
if wpctl status | grep -A 10 "Streams:" | grep -q "running"; then
    reset_timer
    exit 1
fi

exit 0
