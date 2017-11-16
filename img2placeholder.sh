#!/bin/sh
convert -resize 250 $1 /tmp/output
~/go/bin/primitive -i /tmp/output -o /tmp/output.svg -n 25
svgo --multipass -p 1 -i /tmp/output.svg -o $1.svg
