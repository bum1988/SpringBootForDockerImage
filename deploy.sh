#!/usr/bin/env bash

DOCKER_APP_NAME=app

EXIST_BLUE=$(DOCKER_HOST= docker-compose -p ${DOCKER_APP_NAME}-blue -f docker-compose.blue.yml ps | grep Up)

if [ -z "$EXIST_BLUE" ]; then
    echo "Blue Server is updating.........";
    DOCKER_HOST= docker-compose -p ${DOCKER_APP_NAME}-blue -f docker-compose.blue.yml pull
    DOCKER_HOST= docker-compose -p ${DOCKER_APP_NAME}-blue -f docker-compose.blue.yml up -d

    sleep 10

    DOCKER_HOST= docker-compose -p ${DOCKER_APP_NAME}-green -f docker-compose.green.yml down
else
    echo "Green Server is updating.........";
    DOCKER_HOST= docker-compose -p ${DOCKER_APP_NAME}-green -f docker-compose.green.yml pull
    DOCKER_HOST= docker-compose -p ${DOCKER_APP_NAME}-green -f docker-compose.green.yml up -d

    sleep 10

    DOCKER_HOST= docker-compose -p ${DOCKER_APP_NAME}-blue -f docker-compose.blue.yml down
fi
