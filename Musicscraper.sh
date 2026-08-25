#!/bin/bash

# Prompt for folder name
read -p "Enter folder name: " folder

# Create the folder
mkdir -p "$folder"

# Enter the folder
cd "$folder" || exit 1

# Prompt for YouTube URL
read -p "Enter YouTube URL: " url

# Download audio
yt-dlp -U \
    --cookies-from-browser chrome \
    -f ba \
    -x \
    --audio-format mp3 \
    --audio-quality 0 \
    --sleep-interval 5 \
    --max-sleep-interval 15 \
    "$url"

echo
echo "Download complete."
echo "Files saved in: $(pwd)"
