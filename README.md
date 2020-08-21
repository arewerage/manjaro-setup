# Manjaro Gnome Setup File

## 1. Настройка системы
#### Обновление зеркал и всех пакетов (рекомендуется делать в tty (ctrl+alt+f4)):
```sh
sudo setfont cyr-sun16 \ 
&& sudo pacman-mirrors --fasttrack \
&& sudo pacman -Syyuu \
&& reboot
```

#### Установка необходимых драйверов, а также, при необходимости, обновление ядра linux:
```sh
manjaro-settings-manager
```

#### Обновление/установка компонентов base-devel (требуется для установки Yay):
```sh
sudo pacman -S base-devel
```

#### Для восстановления загрузчика (после установки Windows 10 рядом с Linux):
```sh
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

#### Установка консольного помошника Yay:
```sh
git clone https://aur.archlinux.org/yay.git \
&& cd yay \
&& makepkg -si \
&& cd .. \
&& rm -rf yay
```

## 2. Настройка оформления
#### Установка темы для GTK3:
```sh
git clone https://github.com/vinceliuice/Orchis-theme.git \
&& Orchis-theme \
&& ./install.sh \
&& cd .. \
&& rm -rf Orchis-theme
```

#### Установка темы для иконок:
```sh
git clone https://github.com/vinceliuice/Tela-icon-theme.git \
&& cd Tela-icon-theme \
&& ./install.sh \
&& cd .. \
&& rm -rf Tela-icon-theme
```

#### Установка темы для терминала (Flat Remix):
```sh
bash -c  "$(wget -qO- https://git.io/vQgMr)"
```

#### Шрифт для терминала:
```sh
yay -S ttf-jetbrains-mono
```

#### Установка Oh My Zsh и темы Powerlevel10k:
```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
&& exit \
&& git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

#### Установка плагинов для Oh My Zsh
> В файле ~/.zshrc изменить "plugins=(git)" на 
> "plugins=(git zsh-syntax-highlighting zsh-autosuggestions archlinux cargo docker rust rustup vscode)"
```sh
cd ~/.oh-my-zsh/custom/plugins \
&& git clone https://github.com/zsh-users/zsh-autosuggestions.git \
&& git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

#### Переименование рабочих папок (Загрузки > donwload, Докуметы > documents, и т.д.):
```sh
mv ~/Документы ~/documents \
&& mv ~/Загрузки ~/download \
&& mv ~/Рабочий\ стол ~/desktop \
&& mv ~/Шаблоны ~/templates \
&& mv ~/Изображения ~/pictures \
&& mv ~/Музыка ~/music \
&& mv ~/Общедоступные ~/share \
&& mv ~/Видео ~/videos \
&& echo -e "XDG_DESKTOP_DIR=\"\$HOME/desktop\"\nXDG_DOWNLOAD_DIR=\"\$HOME/download\"\nXDG_TEMPLATES_DIR=\"\$HOME/templates\"\nXDG_PUBLICSHARE_DIR=\"\$HOME/share\"\nXDG_DOCUMENTS_DIR=\"\$HOME/documents\"\nXDG_MUSIC_DIR=\"\$HOME/music\"\nXDG_PICTURES_DIR=\"\$HOME/pictures\"\nXDG_VIDEOS_DIR=\"\$HOME/videos\"" > ~/.config/user-dirs.dirs \
&& reboot
```

#### Установка темы для загрузчика Grub2:
```sh
git clone https://github.com/vinceliuice/grub2-themes.git \
&& cd grub2-theme \
&& ./install.sh -t \
&& cd .. \
&& rm -rf grub2-theme
```

## 3. Установка дополнений Gnome:
[Screenshot tool](https://extensions.gnome.org/extension/1112/screenshot-tool/)
[Sound Input & Output Device Chooser](https://extensions.gnome.org/extension/906/sound-output-device-chooser/)
[Tweaks in System Menu](https://extensions.gnome.org/extension/1653/tweaks-in-system-menu/)
[Panel OSD](https://extensions.gnome.org/extension/708/panel-osd/)
