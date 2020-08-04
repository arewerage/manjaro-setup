#!/bin/bash
# Скрипт для переименовывания папок с кириллицы на латиницу.
# Зачем? Удобнее для работы с именами папок из терминала.

mv ~/Документы ~/documents
mv ~/Загрузки ~/donwload
mv ~/Рабочий\ стол ~/desktop
mv ~/Шаблоны ~/templates
mv ~/Изображения ~/pictures
mv ~/Музыка ~/music
mv ~/Общедоступные ~/share
mv ~/Видео ~/videos

echo -e "XDG_DESKTOP_DIR=\"$HOME/desktop\"\nXDG_DOWNLOAD_DIR=\"$HOME/download\"\nXDG_TEMPLATES_DIR=\"$HOME/templates\"\nXDG_PUBLICSHARE_DIR=\"$HOME/share\"\nXDG_DOCUMENTS_DIR=\"$HOME/documents\"\nXDG_MUSIC_DIR=\"$HOME/music\"\nXDG_PICTURES_DIR=\"$HOME/pictures\"\nXDG_VIDEOS_DIR=\"$HOME/videos\" 
" > ~/.config/user-dirs.dirs 
