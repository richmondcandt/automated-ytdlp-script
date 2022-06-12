#!/bin/bash
while true; do
echo "Do you want to install yt-dlp? Y\N"
read answer
if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
	echo "Installing..."
	sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
	sudo chmod a+rx /usr/local/bin/yt-dlp
	echo "Installed!."
	break
elif [[ "$answer" == "N" || "$answer" == "n" ]]; then
	echo "Exiting..."
	break
else
	echo "Oops, something went wrong. :(."
	break
fi
done
