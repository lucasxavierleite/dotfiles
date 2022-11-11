#!/usr/bin/env sh

COLOR_OUTPUT=`grim -g "$(slurp -p)" -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:-`
COLOR=`echo "$COLOR_OUTPUT" | tail -n1 | awk '{print $3}'`

echo "$COLOR_OUTPUT"
echo $COLOR | wl-copy
echo "Color $COLOR copied to clipboard"
