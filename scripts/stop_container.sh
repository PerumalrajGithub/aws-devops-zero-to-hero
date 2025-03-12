#!/bin/bash
set -e

# Get the container ID using port 8000
CONTAINER_ID=$(docker ps -q --filter "publish=8000")

# Stop and remove the container if it's running
if [ ! -z "$CONTAINER_ID" ]; then
  echo "Stopping and removing container using port 8000: $CONTAINER_ID"
  docker stop "$CONTAINER_ID"
  docker rm "$CONTAINER_ID"
else
  echo "No running container found on port 8000"
fi
