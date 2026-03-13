#!/bin/bash

sudo apt update -y

# Install Java
sudo apt install openjdk-17-jdk -y

# Install Docker
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker

# Install Prometheus
docker run -d \
-p 9090:9090 \
--name prometheus \
prom/prometheus

# Install Grafana
docker run -d \
-p 3000:3000 \
--name grafana \
grafana/grafana

# Install SonarQube
docker run -d \
-p 9000:9000 \
--name sonarqube \
sonarqube