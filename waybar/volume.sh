#!/bin/bash
# Получаем текущую громкость
current=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=% )' | head -n1)

if [ "$1" == "up" ]; then
    if [ "$current" -lt 100 ]; then
        pactl set-sink-volume @DEFAULT_SINK@ +5%
    else
        pactl set-sink-volume @DEFAULT_SINK@ 100%
    fi
elif [ "$1" == "down" ]; then
    pactl set-sink-volume @DEFAULT_SINK@ -5%
else
    pactl set-sink-mute @DEFAULT_SINK@ toggle
fi
