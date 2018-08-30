#! /bin/bash


clear
echo "CLEANING IF THE SAME CONTAINER EXIST AS CI/CD PROCESS"
docker rm -f ubuntu_container
docker rm -f centos_container
sleep 2

####RUNNING IN SHELL FORMAT
#echo "RUNNING UBUNTU CONTAINER"
#docker run -it -d --name=ubuntu_container ubuntu:latest
#echo "RUNNING CENTOS CONTAINER"
#docker run -it -d --name=centos_container centos:latest

####RUNNING THROUGH ANSIBLE PLAYBOOK
ansible-playbook docker.yml

echo "DISPLAYING THE NEWLY MADE CONTAINER"

docker ps | grep ubuntu_container
docker ps | grep centos_container
sleep 4
