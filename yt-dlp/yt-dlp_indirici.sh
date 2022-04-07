#!/bin/bash
while true; do
echo "Kurulum yapmak istiyor musunuz? E\H"
read answer
if [[ "$answer" == "E" || "$answer" == "e" ]]; then
	echo "Kurulum yapiliyor..."
	sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
	echo "Kurulum yapildi."
	break
elif [[ "$answer" == "H" || "$answer" == "h" ]]; then
	echo "Kurulum yapilmiyor."
	break
else
	echo "Bir hata olustu. :("
	break
fi
done
