#!/bin/sh

DOCKER_HOST= docker stop $(docker ps -a -q) 
DOCKER_HOST= docker-compose up -d

