#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install wget
sudo apt-get -y install curl
sudo apt-get -y install git
sudo apt-get -y install git-lfs
sudo apt-get -y install p7zip-full
sudo wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get -y update
sudo apt-get -y install powershell