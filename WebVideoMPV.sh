#!/bin/bash

link=$(xclip -o -selection clipboard)

played_file=$HOME/.playedlinks

if mpv "$link"; then
	echo "$link" >> "$played_file"
else
	old_link=$(tail -n 1 "$played_file")
	mpv "$old_link"
fi

## One liner
# link=$(xclip -o -selection clipboard); played_file=$HOME/.playedlinks; mpv "$link" && echo "$link" >> "$played_file" || old_link=$(tail -n 1 "$played_file"); mpv "$old_link"
