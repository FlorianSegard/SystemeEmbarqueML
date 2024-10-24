#!/bin/bash

CONTAINER_NAME="house-price-prediction"
DOCKER_IMAGE="floriansgd/embarqueml:latest"

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Container $CONTAINER_NAME is running. Stopping it..."
    
    docker stop $CONTAINER_NAME
    
    echo "Container $CONTAINER_NAME stopped."
else
    echo "Container $CONTAINER_NAME is not running."
fi

docker rm $CONTAINER_NAME

echo "Starting a new instance of $CONTAINER_NAME..."
docker run -d --name $CONTAINER_NAME -p 8114:8114 $DOCKER_IMAGE
echo "Container $CONTAINER_NAME started."