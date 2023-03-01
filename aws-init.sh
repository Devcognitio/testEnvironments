#!/bin/bash
# Docker install
sudo yum update -y
sudo amazon-linux-extras install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user

# Docker compose install
#sudo curl -L https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose > /dev/null
sudo curl -L https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-linux-x86_64 | sudo tee /usr/local/bin/docker-compose > /dev/null
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

# Modificacione para correr sonar
sudo sysctl -w vm.max_map_count=524288
sudo sysctl -w fs.file-max=131072