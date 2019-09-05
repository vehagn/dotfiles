#!/bin/bash

# Inspired from https://github.com/x-zvf/dotfiles/blob/master/scripts/scrlock.sh

pngfile="/tmp/screenlock.png"
bmpfile="/tmp/screenlock.bmp"
glitched="/tmp/screenglitch.bmp"

# Take screencapture
scrot -z $pngfile

# Convert to BMP and pixelate
convert -spread 12 -rotate -90 $pngfile $bmpfile

for a in {1,2,4,5,10}
do
    # Glitch image with sox FROM https://maryknize.com/blog/glitch_art_with_sox_imagemagick_and_vim/
    sox -t ul -c 1 -r 48k $bmpfile -t ul $glitched trim 0 200s : echo 1 1 $((a*2)) 0.1
    # Roate by 90 deg
    convert -scale $((100/(a)))% -scale $((100*(a)))% -rotate 90 $glitched $bmpfile
done

# Add lock icon, pixelate and convert back to png
convert -gravity center -font "Hack-Bold-Nerd-Font-Complete-Mono" \
        -pointsize 200 -draw "text 0,0 ''" -channel RGBA -fill '#bf616a' \
        $bmpfile $pngfile


DATE=$(date +'%Y-%m-%d_%H-%M-%S')
#convert $pngfile -blur 5 -spread 12 -pointsize 70 -fill white -annotate +100+100 "$(date)" $pngfile
convert $pngfile -pointsize 70 -font "Hack-Bold-Nerd-Font-Complete-Mono" \
        -channel RGBA -fill '#bf616a' -annotate +100+100 "$(date)" $pngfile

i3lock -e -d -f -c 000000 -i $pngfile

rm $pngfile $bmpfile $glitched
