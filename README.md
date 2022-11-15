### An automated bash script for yt-dlp

### Features

- Asks user input for filetype (mp3,mp4 or webm)
- Asks user input for where to download the file (. is valid as input)
- Even if the file title so long, it downloads the file successfully
- You can download any YouTube channel's all videos.

### Requirements

- `python`
- `curl`
- `ffmpeg`
- `yt-dlp`

###### Install requirements for Debian-based distros

> Debian Bullseye (Stable) does not have `yt-dlp` in their repository. Run `yt-dlp_installer.sh` bash script to install `yt-dlp`. It needs `curl` to download `yt-dlp`.

```
sudo apt install curl ffmpeg python3 yt-dlp
```

###### Install requirements for Arch-based distros
```
sudo pacman -S curl ffmpeg python yt-dlp --needed
```

###### How to install the script
- **Easiest and recommended method :** You can install `.deb` package of the script if you are using a Debian-based distro.
- **Manual installation :** You can move the script to any of your `$PATH` environment so you can run it easily. You can name the script as `automated-ytdlp-script`.

### Notes about usage
- webm video format is required for files which can not downloaded with mp4 video format.
