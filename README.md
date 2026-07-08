# video-downloader

A simple Windows batch script to download videos from supported sites using [yt-dlp](https://github.com/yt-dlp/yt-dlp).

## Requirements

- **Windows** (uses `.bat` and PowerShell)
- **[yt-dlp](https://github.com/yt-dlp/yt-dlp)** installed and available in your `PATH`
- **PowerShell** (included with Windows)

### Installing yt-dlp

If yt-dlp is not installed yet, use one of the following methods:

**winget**

```powershell
> winget install yt-dlp
```

**pip**

```powershell
> pip install yt-dlp
```

After installation, confirm it works:

```powershell
> yt-dlp --version
```

## Usage

1. Run `download_video.bat` (double-click or run from a terminal).
2. Paste the video URL when prompted and press Enter.
3. The video is downloaded to your **Downloads** folder (`%USERPROFILE%\Downloads`).
4. When finished, the script shows the save path and download time.

### Example

```
Paste the video URL and press Enter: https://www.youtube.com/watch?v=xxxxxxxxxxx
Saved to: C:\Users\You\Downloads\Video Title.mp4
Download time: 1 min 23 sec
```

## Supported sites

Supported sites depend on your installed yt-dlp version.
To list all extractors available on your machine, run:

```powershell
> yt-dlp --list-extractors
...
twitter
...
youtube
...
>
```

For a human-readable overview, see the [yt-dlp supported sites list](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md).
