### An automated yt-dlp shell script

### Features

- Asks user input for filetype (mp3,mp4 or webm)
- Asks user input for where to download the file (. is valid as input)
- Even if the file title so long, it downloads the file successfully

### Requirements

- `python`
- `curl`
- `ffmpeg`
- `yt-dlp`

###### Install requirements for Debian-based distros
```
sudo apt install curl ffmpeg python3 yt-dlp
```

###### Install requirements for Arch-based distros
```
sudo pacman -S curl ffmpeg python yt-dlp --needed
```

### Notes about usage
- webm filetype is required for files which can not downloaded with mp4
- It is recommended to create a bash alias which points to script.sh for easy usage, i.e `alias ytdlp='bash ~/Documents/automated-ytdlp-script/script.sh'`
