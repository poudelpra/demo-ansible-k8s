#! /bin/bash

## THIS SCRIPT RUN TWO DOCKER CONTAINERS 
### ONE WITH THE LATEST VERSION OF UBUNTU
### THE OTHER WITH THE LATEST VERSION OF CENTOS

clear
echo "CLEANING IF THE SAME CONTAINER EXIST AS CI/CD PROCESS"
docker rm -f ubuntu-container
docker rm -f centos-container
sleep 2
echo "RUNNING UBUNTU CONTAINER"
docker run -it -d --name=ubuntu-container ubuntu:latest

echo "RUNNING CENTOS CONTAINER"
docker run -it -d --name=centos-container centos:latest

echo "DISPLAYING THE NEWLY MADE CONTAINER"

docker ps | grep ubuntu-container
docker ps | grep centos-container
sleep 4
