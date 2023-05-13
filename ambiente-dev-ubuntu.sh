#!/bin/bash

# Atualização dos pacotes
sudo apt update -y
sudo apt upgrade -y

# Instalação de pacotes auxiliares no desenvolvimento
sudo apt install dkms make perl gcc build-essential git curl -y

# Instalação do ZSH
sudo apt install zsh -y
zsh

# Instalação do Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Configuração do ZSH autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Configuração do ZSH syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Mudar plugins
# Em ~ no arquivo .zshrc mudar plugins=(git zsh-autosuggestions zsh-syntax-highlighting)