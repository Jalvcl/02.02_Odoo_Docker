# Instalar Docker

## Para Ubuntu 16.04

### Comandos

#### Descarga

```sh
# descargar y correr con
sudo curl -L https://raw.githubusercontent.com/Jalvcl/02.02_Odoo_Docker/master/instalar_docker.sh | sudo bash
```

#### Programa

```sh
#!/bin/bash
set -x #echo on

#preparacion instalación
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

apt-cache policy docker-ce

sudo apt-get install \
    docker-ce -y \
    docker-compose -y

systemctl status docker --no-pager

#pasos post instalación
sudo groupadd docker
sudo usermod -aG docker $USER
#sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
#sudo chmod g+rwx "$HOME/.docker" -R
sudo systemctl enable docker

#sudo shutdown -r now
#curl -O https://raw.githubusercontent.com/Jalvcl/02.02_Odoo_Docker/master/docker-compose.yml
#docker-compose up -d
```

### Configuración para Prometheus

```sh
sudo nano /etc/docker/daemon.json
````

```json
# {
#   "metrics-addr" : "127.0.0.1:9323",
#   "experimental" : true
# }
```
