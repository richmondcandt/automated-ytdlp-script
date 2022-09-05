#!/bin/bash
RED='\033[1;31m' # RED // For error message
NC='\033[0m' # No Color // Normal
CYAN='\033[0;36m' # Cyan
YELLOW='\033[0;33m' # Yellow
PURPLE='\033[0;35m' # Purple
LBLUE='\033[0;34m' # Light Blue
whereami=$(pwd) # for support '.' in path input
while true; do
printf "${CYAN}mp3, mp4, webm,${YELLOW} q, exit${NC}\n"
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
else
printf "${RED}Oops, something went wrong. :(${NC}\n"
break
fi 
done
