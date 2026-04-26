#!/bin/bash
# Заходим в папку репозитория
cd "$(dirname "$0")"

# Добавляем всё
git add .

# Просим ввести описание изменений (если нажал Enter - будет "update")
echo "Что изменил? (Enter для пропуска):"
read msg
if [ -z "$msg" ]; then
  msg="update configs"
fi

git commit -m "$msg"
git push origin main
echo "Конфиги на Гитхабе!"
