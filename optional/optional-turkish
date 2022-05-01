#!/bin/bash

echo "Devam etmek istiyor musunuz? E/H"

read answer

if [[ "$answer" == "E" || "$answer" == "e" ]]; then
echo "Betik çalışıyor."
echo "indirici.sh isimli betiği hangi isimle çalıştırmak istiyorsunuz?"
read name
sudo cp ../bin/indirici.sh /usr/local/bin/"$name"
echo "Tamamdır!"
elif [[ "$answer" == "H" || "$answer" == "h" ]]; then
echo "Betik çalışmadı ve kapatıldı."
else
echo "Bir hata oluştu. :("
fi
