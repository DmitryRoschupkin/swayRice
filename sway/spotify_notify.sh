#!/bin/bash
playerctl --player=spotify metadata --format '{{title}} - {{artist}}' --follow | while read -r line; do
    # Берем ссылку на обложку
    img_url=$(playerctl --player=spotify metadata mpris:artUrl)
    # Качаем её в /tmp/spotify_cover.png
    curl -s "$img_url" -o /tmp/spotify_cover.png
    # Шлем уведомление с иконкой-обложкой
    notify-send "Now Playing" "$line" -i /tmp/spotify_cover.png
done
