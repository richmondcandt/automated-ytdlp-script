### An automated yt-dlp shell script

### Requirements

- python
> Python versions 3.7+ (CPython and PyPy) are supported. Other versions and implementations may or may not work correctly.

- curl
- ffmpeg
- yt-dlp

Install requirements for Debian-based distros
```
sudo apt install curl ffmpeg python3 yt-dlp
```

Install requirements for Arch-based distros
```
sudo pacman -S curl ffmpeg python yt-dlp --needed
```

##### Usage of release v1

![Usage of Release v1](https://github.com/nxjosephofficial/automated-ytdlp-script/blob/main/yt-dlp.gif)


##### Usage of release v2

![Usage of Release v2](https://github.com/nxjosephofficial/automated-ytdlp-script/blob/main/yt-dlp-v2.gif)

### v1 features
- Does not ask for download path, mp3 files goes into `~/Music` mp4 files goes into `~/Videos`
- If video/audio title so long, you will fail to download.

### v2 features
- Asks for download path.
- video/audio title limited to valid value.
