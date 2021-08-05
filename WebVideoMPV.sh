#!/bin/bash

## A SCRIPT TO PLAY CLIPBOARDED URLS WITH MPV

# Get cliboard content
link=$(xclip -o -selection clipboard)

# Directory for a history of played urls
history=$HOME/.webvideompvhistory

# Save clipboard to the history
# Do this before playing so if it crashes you still have the history
echo "$link" >> "$history"

# Try to play the clipboard with mpv, and if it fails
if ! mpv "$link"; then
	# Remove the last added line from history
	sed -i '$d' "$history"
	# Get the last item from the history
	old_link=$(tail -n 1 "$history")
	# Play that instead
	mpv "$old_link"
fi

## One liner
# link=$(xclip -o -selection clipboard); history=$HOME/.webvideompvhistory; echo "$link" >> "$history"; mpv "$link" || sed -i '$d' "$history"; old_link=$(tail -n 1 "$history"); mpv "$old_link"
