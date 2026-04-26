#!/bin/bash
# Скрипт создания ссылок для нового окружения
cd ~/swayRice
configs=("sway" "waybar" "wofi" "mako")

mkdir -p ~/.config

for folder in "${configs[@]}"; do
    # Удаляем старый конфиг, если он есть
    rm -rf ~/.config/$folder
    # Создаем ссылку
    ln -s ~/swayRice/$folder ~/.config/$folder
    echo " Ссылка для $folder создана"
done
echo "Райс готов к работе!"
