#!/bin/bash
set -e

# Find container using port 8000
CONTAINER_ID=$(docker ps -q --filter "publish=8000")

# Stop and remove the container if it exists
if [ ! -z "$CONTAINER_ID" ]; then
  echo "Stopping container: $CONTAINER_ID"
  docker stop "$CONTAINER_ID"
  docker rm "$CONTAINER_ID"
else
  echo "No running container found on port 8000"
fi
