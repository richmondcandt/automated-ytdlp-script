#!/bin/bash
RED='\033[1;31m' # RED // For error message
NC='\033[0m' # No Color // Normal
CYAN='\033[0;36m' # Cyan
YELLOW='\033[0;33m' # Yellow
PURPLE='\033[0;35m' # Purple
LBLUE='\033[0;34m' # Light Blue
whereami=$(pwd) # for support '.' in path input
while true; do
printf "${CYAN}mp3, mp4, webm, channel,${YELLOW} q, exit${NC}\n"
read type
if [ "$type" == "mp3" ]; then
printf "${PURPLE}Link: ${NC}"
read link
printf "${PURPLE}Path: ${NC}"
read path
if [ "$path" == "." ]; then
yt-dlp -x --audio-format mp3 "$link" -o "$whereami"/"%(title).200s.%(ext)s"
else
yt-dlp -x --audio-format mp3 "$link" -o "$path""%(title).200s.%(ext)s"
fi
elif [ "$type" == "mp4" ]; then
printf "${PURPLE}Link: ${NC}"
read link
printf "${PURPLE}Path: ${NC}"
read path
if [ "$path" == "." ]; then
yt-dlp -f 22 "$link" -o "$whereami"/"%(title).200s.%(ext)s"
else
yt-dlp -f 22 "$link" -o "$path""%(title).200s.%(ext)s"
fi
elif [ "$type" == "webm" ]; then
printf "${PURPLE}Link: ${NC}"
read link
printf "${PURPLE}Path: ${NC}"
read path
if [ "$path" == "." ]; then
yt-dlp "$link" -o "$whereami"/"%(title).200s.%(ext)s"
else
yt-dlp "$link" -o "$path""%(title).200s.%(ext)s"
fi
elif [[ "$type" == "q" || "$type" == "exit" ]]; then
break
elif [ "$type" == "channel" ]; then
printf "${PURPLE}Enter Channel ID${NC}\n"
read channel
if [ "$channel" == "" ]; then
    printf "${RED}Channel ID can not be empty!${NC}\n"
    break
fi
printf "${PURPLE}Select video format${CYAN}\n1) 720p, 2) 1080p, 3) best, 4) mp3${NC}\n"
read format
if [ "$format" != "" ]; then
    if [[ "$format" == "1" || "$format" == "720p" ]]; then
        yt-dlp -f 'bv*[height=720]+ba' --embed-thumbnail --embed-metadata --download-archive $channel.txt https://www.youtube.com/channel/$channel/videos -o '%(channel)s/%(title).200s.%(ext)s'
    elif [[ "$format" == "2" || "$format" == "1080p" ]]; then
        yt-dlp -f 'bv*[height=1080]+ba' --embed-thumbnail --embed-metadata --download-archive $channel.txt https://www.youtube.com/channel/$channel/videos -o '%(channel)s/%(title).200s.%(ext)s'
    elif [[ "$format" == "3" || "$format" == "best" ]]; then
        yt-dlp -f b --embed-thumbnail --embed-metadata --download-archive $channel.txt https://www.youtube.com/channel/$channel/videos -o '%(channel)s/%(title).200s.%(ext)s'
    elif [[ "$format" == "4" || "$format" == "mp3" ]]; then
        yt-dlp -x --audio-format mp3 --embed-thumbnail --embed-metadata --download-archive $channel.txt https://www.youtube.com/channel/$channel/videos -o '%(channel)s/%(title).200s.%(ext)s'    
    else
        printf "${RED}Wrong format!${NC}\n"
    fi
else
printf "${RED}Format can not be empty!${NC}\n"
fi
else
printf "${RED}Oops, something went wrong. :(${NC}\n"
break
fi 
done
