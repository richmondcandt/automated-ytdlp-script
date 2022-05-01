#!/bin/bash

echo "Do you want to continue? Y/N"

read answer

if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
echo "Okay, script working."
echo "What name do you want to call it? it's called downloader.sh by default."
read name
sudo cp ../bin/downloader.sh /usr/local/bin/"$name"
echo "OK!"
elif [[ "$answer" == "N" || "$answer" == "n" ]]; then
echo "Okay, script will not work."
else
echo "Oops, something went wrong. :("
fi
