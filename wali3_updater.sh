#Just a script that automates the command of wal and sets the wallpaper automaticaly instead of editing it in i3's config. 
#!/bin/bash
i3path=~/.config/i3/config
imagename=$1 
wal -i $imagename
path=$(locate $imagename)
sed -i '$d' $i3path
echo 'exec_always feh --bg-scale ' $path  >> $i3path


