#!/bin/bash

# to install: sh -c "$(curl -fsSL https://raw.githubusercontent.com/kefyru/bash/main/zsh.sh)"

# Устанавливаем Zsh  
sudo apt update  
sudo apt install fonts-powerline mc ranger vim nano git zsh -y
# Смена оболочки по умолчанию  
chsh -s $(which zsh)

echo "Zsh успешно установлен с темой Powerlevel10k. Перезапустите терминал для применения изменений."
