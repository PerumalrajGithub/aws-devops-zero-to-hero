#!/bin/bash
set -e

# Get the container ID of the running container
CONTAINER_ID=$(docker ps -q --filter "ancestor=perumalraj2312/simple-python-flask-app:latest")

# Stop and remove the container if it exists
if [ ! -z "$CONTAINER_ID" ]; then
  echo "Stopping and removing container: $CONTAINER_ID"
  docker stop "$CONTAINER_ID"
  docker rm "$CONTAINER_ID"
else
  echo "No running container found for perumalraj2312/simple-python-flask-app:latest"
fi
