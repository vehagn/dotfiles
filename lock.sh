#!/bin/bash
#import -window root -crop 3440x1440 -resize 3440x1440 /tmp/screenshot.png
import -window root /tmp/screenshot.png
DATE=$(date +'%Y-%m-%d_%H-%M-%S')
convert /tmp/screenshot.png -blur 5 -spread 12 -pointsize 70 -fill white -annotate +100+100 "$(date)" /tmp/screenshotblur.png
rm /tmp/screenshot.png
i3lock -d -f -c 000000 -i /tmp/screenshotblur.png
