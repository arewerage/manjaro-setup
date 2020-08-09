# Settings file for Manjaro Gnome
Мой справочник для настройки только что установленной Manjaro Gnome

## Обновление зеркал и самой системы
Рекомендуется делать в tty (ctrl+alt+f4):
```sh
$ sudo setfont cyr-sun16
$ sudo pacman-mirrors --fasttrack
$ sudo pacman -Syyuu
$ reboot
```
После перезапуска получаем обновленные зеркала и систему.

## Установка драйверов для видеокарты
```sh
$ manjaro-settings-manager
```
Далее "Конфигурация оборудования" -> "Auto Install Proprietary Driver"

## Установка тем для оболочки, иконок и терминала
Создание временной папки:
```sh
$ mkdir ~/theme-cache
```

Оболочка:
```sh
$ cd ~/theme-cache
$ sudo pacman -S gtk-engine-murrine gtk-engines
$ git clone https://github.com/vinceliuice/Qogir-theme.git
$ cd Qogir-theme
$ sudo sh install.sh -l manjaro -c dark
```
Иконки:
```sh
$ cd ~/theme-cache
$ git clone https://github.com/vinceliuice/Tela-icon-theme.git
$ cd Tela-icon-theme
$ sudo sh install.sh
```

Терминал:
```sh
$ cd ~/theme-cache
$ git clone https://github.com/dracula/gnome-terminal.git
$ cd gnome-terminal
$ sudo sh install.sh
```

Удаление временной папки:
```sh
$ rm -rf ~/theme-cache
```

## Установка Oh My Zsh для терминала
```sh
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Далее устанавливаем оформление для терминала:
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Устанавлниваем плагины (ищем строчку plugins в файле ~/.zshrc и добавляем нужные):
> plugins=(git zsh-syntax-highlighting zsh-autosuggestions archlinux cargo docker rust rustup vscode)

Добавляем зависимости для них:
```sh
$ cd ~/.oh-my-zsh/custom/plugins
$ git clone https://github.com/zsh-users/zsh-autosuggestions.git
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

## Переименование рабочих папок (Загрузки -> download, Документы -> documents, и т.д.)
```sh
$ mv ~/Документы ~/documents
$ mv ~/Загрузки ~/download
$ mv ~/Рабочий\ стол ~/desktop
$ mv ~/Шаблоны ~/templates
$ mv ~/Изображения ~/pictures
$ mv ~/Музыка ~/music
$ mv ~/Общедоступные ~/share
$ mv ~/Видео ~/videos
```
Также изменяем содержимое файла ~/.config/user-dirs.dirs:
```sh
$ echo -e "XDG_DESKTOP_DIR=\"\$HOME/desktop\"\nXDG_DOWNLOAD_DIR=\"\$HOME/download\"\nXDG_TEMPLATES_DIR=\"\$HOME/templates\"\nXDG_PUBLICSHARE_DIR=\"\$HOME/share\"\nXDG_DOCUMENTS_DIR=\"\$HOME/documents\"\nXDG_MUSIC_DIR=\"\$HOME/music\"\nXDG_PICTURES_DIR=\"\$HOME/pictures\"\nXDG_VIDEOS_DIR=\"\$HOME/videos\"" > ~/.config/user-dirs.dirs
```

## Установка разширений для Gnome
[Screenshot tool](https://extensions.gnome.org/extension/1112/screenshot-tool/)
[Sound Input & Output Device Chooser](https://extensions.gnome.org/extension/906/sound-output-device-chooser/)
[Tweaks in System Menu](https://extensions.gnome.org/extension/1653/tweaks-in-system-menu/)

## Установка Yay:
```sh
$ cd ~
$ sudo pacman -S base-devel
$ git clone https://aur.archlinux.org/yay.git
$ cd yay
$ makepkg -si
$ cd ..
$ rm -rf yay
```

## Установка Neovim:
```sh
pamac-manager 
```
Далее "neovim" в поиске -> "Установить" (При установке советую выбрать все доп. зависимости)
