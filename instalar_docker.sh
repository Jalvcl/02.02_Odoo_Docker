#!/bin/bash
set -x #echo on

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo apt install docker-compose -y
systemctl status docker --no-pager
#sudo usermod -a -G docker ${USER}
#sudo shutdown -r now
curl -O https://raw.githubusercontent.com/Jalvcl/02.02_Odoo_Docker/master/docker-compose.yml
docker-compose up -d
