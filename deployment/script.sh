#!/bin/bash

# Stop the existing container
docker stop 8dae6343e1cc

# Remove the existing container
docker rm 8dae6343e1cc

# Pull the latest image from Docker Hub
docker pull calzada4/proj5:v1.0.0

# Start a new container using the latest image
docker run -d --name  8dae6343e1cc calzada4/proj5:v1.0.0

echo "Container restarted with the latest image."
