#!/bin/bash

stylus_id=`xsetwacom --list| grep 'stylus' | cut -f 2 | cut -d " " -f 2`
pad_id=`xsetwacom --list | grep 'pad' | cut -f 2 | cut -d " " -f 2`

screen_width=1920
screen_height=1080
tablet_width=`xsetwacom --get $stylus_id Area | cut -d " " -f 3`
tablet_height=`xsetwacom --get $stylus_id Area | cut -d " " -f 4`

let "new_tablet_height = screen_height * tablet_width / screen_width"
let "tablet_offset_y = tablet_height - new_tablet_height"
let "tablet_offset_y = tablet_offset_y / 2"

primary_screen_id=`xrandr | grep DVI-0 | cut -d " " -f 1`

`xsetwacom --set $stylus_id ResetArea`
`xsetwacom --set $pad_id RawSample 4`
`xinput map-to-output $stylus_id $primary_screen_id`
`xsetwacom --set $stylus_id Area 0 $tablet_offset_y $tablet_width $new_tablet_height`
