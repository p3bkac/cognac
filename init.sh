#!/usr/bin/env bash

# p3bkac/cognac - init.sh
# new system init script that install all necessary basic utilities alongside the included configs

##  direct apt pkgs  ##
sudo apt update && sudo apt upgrade -y
sudo apt install git zsh kitty tree sxiv python3 python3-pip keepassxc gpg

##  mullvad (https://mullvad.net/en/download/vpn/linux)  ##
sudo curl -fsSLo /usr/share/keyrings/mullvad-keyring.asc https://repository.mullvad.net/deb/mullvad-keyring.asc
echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/stable stable main" | sudo tee /etc/apt/sources.list.d/mullvad.list
sudo apt update && sudo apt install mullvad-vpn

##  brave (https://brave.com/linux/)  ##
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources
sudo apt update && sudo apt install brave-browser

##  vscodium (https://github.com/VSCodium/vscodium/releases)  ##
brave-browser "https://github.com/VSCodium/vscodium/releases"

