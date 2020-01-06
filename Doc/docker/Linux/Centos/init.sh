#!/bin/sh

sudo yum update -y

sudo yum remove -y docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

sudo yum install -y yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum-config-manager --enable docker-ce-nightly

sudo yum install -y docker-ce docker-ce-cli containerd.io

sudo systemctl start docker

sudo systemctl enable docker

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose

sudo chmod +x /usr/bin/docker-compose
