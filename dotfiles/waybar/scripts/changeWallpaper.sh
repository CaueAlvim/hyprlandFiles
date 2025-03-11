#!/bin/bash

##-------------------------------------------------------
# some transition types: 
#  simple (fade into image)
#  outer  (shrinks into image)
#  grow   (grows into image)
#  wipe
#  random
##-------------------------------------------------------

transition_type="grow"
refreshRate="72"
wallpaperDir="$(xdg-user-dir PICTURES)/Wallpapers"
selectedImage="$(find "$wallpaperDir" -name '*.png' | shuf -n1)"

if pgrep "swww-daemon" > /dev/null ; then
	if [[ "$transition_type" == "grow" ]]; then
		swww img "$selectedImage" --transition-fps $refreshRate --transition-type $transition_type --transition-duration 1 --transition-pos 1620,20 --invert-y
	else
		swww img "$selectedImage" --transition-fps $refreshRate --transition-type $transition_type --transition-duration 1
	fi
else
  notify-send "Error" "Wallpaper daemon not running!"
fi
