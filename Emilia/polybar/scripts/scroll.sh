#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 16 \
        --delay 0.05 \
        --scroll-padding "  " \
        --match-command "`dirname $0`/spotify.sh --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
	--match-text "No player is running" "--scroll 1" \
        --update-check true "`dirname $0`/spotify.sh" &

wait
