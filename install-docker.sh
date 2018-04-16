#!/bin/bash
set -e
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 -y

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu zesty stable" -y

sudo apt-get update -y
sudo apt-get install docker-ce -y
sudo apt autoclean -y
sudo apt-get clean -y
sudo apt autoremove -y
sudo apt-get autoremove --purge -y
