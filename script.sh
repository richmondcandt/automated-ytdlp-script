#!/bin/bash
whereami=$(pwd) # for support '.' in path input
while true; do
printf "mp3, mp4, webm, channel, q or exit\n"
read -r type
if [ "$type" == "mp3" ]; then
printf "Link: "
read -r link
printf "Path: "
read -r path
if [ "$path" == "." ]; then
yt-dlp -x --audio-format mp3 "$link" -o "$whereami""/""%(title).200s.%(ext)s"
else
yt-dlp -x --audio-format mp3 "$link" -o "$path""%(title).200s.%(ext)s"
fi
elif [ "$type" == "mp4" ]; then
printf "Link: "
read -r link
printf "Path: "
read -r path
if [ "$path" == "." ]; then
yt-dlp -f 22 "$link" -o "$whereami""/""%(title).200s.%(ext)s"
else
yt-dlp -f 22 "$link" -o "$path""%(title).200s.%(ext)s"
fi
elif [ "$type" == "webm" ]; then
printf "Link: "
read -r link
printf "Path: "
read -r path
if [ "$path" == "." ]; then
yt-dlp "$link" -o "$whereami""/""%(title).200s.%(ext)s"
else
yt-dlp "$link" -o "$path""%(title).200s.%(ext)s"
fi
elif [[ "$type" == "q" || "$type" == "exit" ]]; then
break
elif [ "$type" == "channel" ]; then
printf "Enter Channel ID\n"
read -r channel
if [ "$channel" == "" ]; then
printf "Channel ID can not be empty!\n"
break
fi
printf "Select video format\n1) 720p, 2) 1080p, 3) best, 4) mp3\n"
read -r format
if [ "$format" != "" ]; then
if [[ "$format" == "1" || "$format" == "720p" ]]; then
yt-dlp -f 'bv*[height=720]+ba' --embed-thumbnail --embed-metadata --download-archive "$channel".txt https://www.youtube.com/channel/"$channel"/videos -o '%(channel)s/%(title).200s.%(ext)s'
elif [[ "$format" == "2" || "$format" == "1080p" ]]; then
yt-dlp -f 'bv*[height=1080]+ba' --embed-thumbnail --embed-metadata --download-archive "$channel".txt https://www.youtube.com/channel/"$channel"/videos -o '%(channel)s/%(title).200s.%(ext)s'
elif [[ "$format" == "3" || "$format" == "best" ]]; then
yt-dlp -f b --embed-thumbnail --embed-metadata --download-archive "$channel".txt https://www.youtube.com/channel/"$channel"/videos -o '%(channel)s/%(title).200s.%(ext)s'
elif [[ "$format" == "4" || "$format" == "mp3" ]]; then
yt-dlp -x --audio-format mp3 --embed-thumbnail --embed-metadata --download-archive "$channel".txt https://www.youtube.com/channel/"$channel"/videos -o '%(channel)s/%(title).200s.%(ext)s'    
else
printf "Wrong format!\n"
fi
else
printf "Format can not be empty!\n"
fi
else
printf "Oops, something went wrong. :(\n"
break
fi
done
