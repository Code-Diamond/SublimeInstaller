#!/bin/bash
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

#Download xbindkeys
sudo apt-get install -y xbindkeys xdotool
#bind control F1 to activate sublime
sudo echo '"xdotool windowactivate $(xdotool search --name "sublime" | grep "." | tail -1);"' >> ~/.xbindkeysrc; 
sudo echo 'Control + F1' >> ~/.xbindkeysrc;
#restart xbindkeys
sudo killall -s1 xbindkeys
xbindkeys -f ~/.xbindkeysrc 