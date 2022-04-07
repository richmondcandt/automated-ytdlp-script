#!/bin/bash

echo "Do you want to continue? Y/N"

read answer

if [[ $answer == "Y" || $answer == "y" ]]; then
echo "Okay, script working."
sudo cp ../bin/*.sh /usr/local/bin/
echo "OK!"
elif [[ $answer == "N" || $answer == "n" ]]; then
echo "Okay, script will not work."
else
echo "Oops, something went wrong. :("
fi
