@echo off
chcp 65001 > nul
title video-downloader

set /p URL="Paste the video URL and press Enter: "
if not defined URL exit /b

set "START=%time%"
yt-dlp --no-quiet --print "after_move:Saved to: %%(filepath)s" -o "%USERPROFILE%\Downloads\%%(title)s.%%(ext)s" "%URL%"
set "END=%time%"

powershell -NoProfile -Command "$e=[TimeSpan]::Parse('%END%')-[TimeSpan]::Parse('%START%'); if($e -lt 0){$e+=[TimeSpan]::FromDays(1)}; 'Download time: {0} min {1} sec' -f [int][math]::Floor($e.TotalMinutes), $e.Seconds"

echo.
pause
