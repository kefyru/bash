#!/bin/bash

if [ -z "$ZSH_CUSTOM" ]
then
  echo "zh not installed"
  exit 1
fi

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
