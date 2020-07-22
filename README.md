# WebVideoMPV
A script to easily run copied URLs in mpv.

Requires mpv, youtube-dl and xclip

# Usage
When executing the script it will append the clipboard to a file and then try to use mpv on whatever you have on your clipboard. If it's not a valid URL then it will delete that line from the file and run mpv on the last watched video from the aformentioned file.

The script behaves this way because if your computer crashes or shutdowns for whatever reason while viewing the video, when you turn on again you won't have the video open, and if you just copied the URL without entering it in your browser it won't be on your history, and if it was some recomended video for example of youtube then good luck finding it again.
