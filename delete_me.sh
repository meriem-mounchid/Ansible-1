#!/bin/bash

#### Remove containers and images on Docker ####
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)

sudo kill -9 $(sudo lsof -t -i:80)