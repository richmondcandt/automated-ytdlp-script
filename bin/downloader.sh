#!/bin/bash

while true; do
echo
echo "mp3, mp4 or webm?"
echo "q for quit."
echo

read type

if [[ "$type" == "mp3" ]]; then
    echo "Enter your link please:"
    read link
    yt-dlp -x --audio-format mp3 "$link"
elif [[ "$type" == "mp4" ]]; then
    echo "Enter your link please:"
    read link
    yt-dlp -f 22 "$link"
elif [[ "$type" == "webm" ]]; then
    echo "Enter your link please:"
    read link
    yt-dlp "$link"
elif [[ "$type" == "q" ]]; then
    break
else
    echo "Oops, something went wrong. :("
fi
done
