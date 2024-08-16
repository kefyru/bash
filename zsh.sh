#!/bin/bash

# Устанавливаем Zsh  
sudo apt update  
sudo apt install git -y
sudo apt install zsh -y

# Устанавливаем oh-my-zsh  
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Устанавливаем тему Powerlevel10k  
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Устанавливаем плагин zsh-autosuggestions  
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Устанавливаем плагин zsh-syntax-highlighting  
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Настройка конфигурации Zsh  
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc  
echo "plugins=(git zsh-autosuggestions zsh-syntax-highlighting)" >> ~/.zshrc

# Устанавливаем шрифт для отображения иконок Powerline  
sudo apt install fonts-powerline -y

# Смена оболочки по умолчанию  
chsh -s $(which zsh)

echo "Zsh успешно установлен с темой Powerlevel10k. Перезапустите терминал для применения изменений."
