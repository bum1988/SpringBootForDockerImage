#!/bin/sh

DOCKER_HOST= docker stop $(docker ps -a -q)

