#!/bin/bash

link=$(xclip -o -selection clipboard)

played_file=$HOME/.playedlinks

echo "$link" >> "$played_file"

if ! mpv "$link"; then
	sed -i '$d' "$played_file"
	old_link=$(tail -n 1 "$played_file")
	mpv "$old_link"
fi

## One liner
# link=$(xclip -o -selection clipboard); played_file=$HOME/.playedlinks; echo "$link" >> "$played_file"; mpv "$link" || sed -i '$d' "$played_file"; old_link=$(tail -n 1 "$played_file"); mpv "$old_link"
