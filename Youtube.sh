#!/data/data/com.termux/files/usr/bin/bash

echo "Installation d'APT"
pkg install apt # Installation d'APT
sleep 3
clear

echo "Mise a niveau des paquet basique"
apt update && apt -y upgrade # Mise a jours des paquet
sleep 3
clear

echo "Installation des paquet de dépendance a YouTube-DL"
apt -y install python nano curl bash ffmpeg  # Installation des choses requise pour YouTube-DL
sleep 3
clear

echo "Demande d'accèes au stockage"
termux-setup-storage
sleep 3
clear

echo "Installation de Youtube-DL"
pip install youtube-dl
clear

echo "Création de fichier partager entre Termux et le téléphone"
mkdir /data/data/com.termux/files/home/storage/shared/Youtube
sleep 3

echo "Ajout de la configuration de Youtube-DL"
mkdir -p ~/.config/youtube-dl
curl https://raw.githubusercontent.com/Elixir-Nathan/Youtube-DL-Termux-Script/main/config -o ~/.config/youtube-dl/config

echo "Ajout de la fonction de téléchargement"
mkdir ~/bin
