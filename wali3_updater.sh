#!/bin/bash
i3path=~/.config/i3/config
imagename=$1 
wal -i $imagename
path=$(locate $imagename)
sed -i '$d' $i3path
echo 'exec_always feh --bg-scale ' $path  >> $i3path


#image updater after using wal in i3

