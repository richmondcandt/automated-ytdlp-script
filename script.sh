#!/bin/bash
whereami=$(pwd) # for support '.' in path input
while true; do
printf "mp3, mp4, webm, q or exit\n"
read -r type
if [ "$type" == "mp3" ]; then
printf "Link: "
read -r link
printf "Path: "
read -r path
if [ "$path" == "." ]; then
yt-dlp -x --audio-format mp3 "$link" -o "$whereami"/"%(title).200s.%(ext)s"
else
yt-dlp -x --audio-format mp3 "$link" -o "$path""%(title).200s.%(ext)s"
fi
elif [ "$type" == "mp4" ]; then
printf "Link: "
read -r link
printf "Path: "
read -r path
if [ "$path" == "." ]; then
yt-dlp -f 22 "$link" -o "$whereami"/"%(title).200s.%(ext)s"
else
yt-dlp -f 22 "$link" -o "$path""%(title).200s.%(ext)s"
fi
elif [ "$type" == "webm" ]; then
printf "Link: "
read -r link
printf "Path: "
read -r path
if [ "$path" == "." ]; then
yt-dlp "$link" -o "$whereami"/"%(title).200s.%(ext)s"
else
yt-dlp "$link" -o "$path""%(title).200s.%(ext)s"
fi
elif [[ "$type" == "q" || "$type" == "exit" ]]; then
break
else
printf "Oops, something went wrong. :(\n"
break
fi
done
