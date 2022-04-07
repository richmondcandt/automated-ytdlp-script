#!/bin/bash

while true; do
echo """
Müzik veya podcast için mp3,
Video için mp4,
Video için webm,
Çıkış yapmak için q,
ifadelerini giriniz.
"""

read type

if [[ "$type" == "mp3" ]]; then
    echo "Link bağlantısını giriniz:"
    read link
    yt-dlp -x --audio-format mp3 $link
elif [[ $type == "mp4" ]]; then
    echo "Link bağlantısını giriniz:"
    read link
    yt-dlp -f 22 $link

elif [[ $type == "webm" ]]; then
    echo "Link bağlantısını giriniz:"
    read link
    yt-dlp $link
elif [[ $type == "q" ]]; then
    break

else
    echo "Oops, something went wrong. :("
fi
done
