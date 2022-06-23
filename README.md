### An automated yt-dlp shell script

![Usage](https://github.com/nxjosephofficial/automated-ytdlp-script/blob/main/yt-dlp.gif)

That script needs yt-dlp. If you don't have yt-dlp, you can run yt-dlp-installer or install manually.
If you have yt-dlp, you can run downloader.

### Dependencies
> Python versions 3.7+ (CPython and PyPy) are supported. Other versions and implementations may or may not work correctly.
While all the other dependencies are optional.
- python
- curl
- ffmpeg

for Debian-based distros
```
sudo apt install curl ffmpeg python3
```

for Arch-based distros
```
sudo pacman -S curl ffmpeg python
```

You can run put-to-bin for be able to execute downloader script from everywhere and rename downloader.


### Information for version v1
#### Where are downloaded files?
for mp3 files, script puts them into ~/Music folder.
<br>
for mp4 and webm files, script puts them into ~/Videos folder.
