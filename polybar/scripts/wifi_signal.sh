#!/bin/bash

# Source the colors from the external file
colors_file="../colors.ini"


# Define your interface and initial colors
INTERFACE="wlp0s20f3"
# bg_color="#3a644c"  # Default background color
# fg_color="#0f1314"  # Default foreground color

# bg_color="#BFB699"  # Default background color
# fg_color="#0f1314"  # Default foreground color


bg_color="#23283B"  # Default background color
fg_color="#F7758D"  # Default foreground color

# Get the signal strength
SIGNAL=$(iw dev $INTERFACE link | grep signal | awk '{print $2}')

# Based on the signal strength, change the colors and icon
if [ -z "$SIGNAL" ]; then
    ICON="󰖪 "
    fg_color="#ff0000"  # Red color for disconnected status
elif [ "$SIGNAL" -lt -75 ]; then
    ICON="󰤟 "
elif [ "$SIGNAL" -lt -60 ]; then
    ICON="󰤢 "
elif [ "$SIGNAL" -lt -50 ]; then
    ICON="󰤥 "
elif [ "$SIGNAL" -ge -50 ]; then
    ICON="󰤨 "
fi

# Output the formatted string
echo "%{B$bg_color F$fg_color} $ICON %{B- F-}"
