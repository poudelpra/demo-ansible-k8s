#! /bin/bash

#FOLOWING SCRIPT COMMIT THE NEWLY BUILD CENTOS AND UBUNTU CONTAINER

clear
echo "CLEANING IF THE SAME TAG EXIST AS CI/CD PROCESS"
docker rmi -f ubuntu-template
docker rmi -f centos-template

echo "COMMITTING UBUNTU CONTAINER"
docker commit ubuntu-container ubuntu-template

echo "COMMITTING CENTOS CONTAINER"
docker commit centos-container centos-template


#DISPLAYING THE NEWLY TAGED IMAGE
echo " THE FOLLOWING IMAGES WERE TAGGED CURRENTLY"
docker images | grep ubuntu-template
docker images | grep centos-template

