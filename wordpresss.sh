#!/bin/bash
sudo yum install git -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version
sudo git clone https://github.com/amar-m-cloud/docker-compose.git
sudo chmod 666 /var/run/docker.sock
cd docker-compose
docker-compose up -d
