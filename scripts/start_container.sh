#!/bin/bash
set -e

# Run stop script to clean up previous container
./stop_container.sh

# Pull the latest Docker image
docker pull perumalraj2312/simple-python-flask-app:latest

# Run the container on port 8000
docker run -d -p 8000:8000 perumalraj2312/simple-python-flask-app:latest

# Show running containers
docker ps
