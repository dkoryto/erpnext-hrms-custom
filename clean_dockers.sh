#!/bin/bash

# Stop all running containers
echo "Stopping all containers..."
docker stop $(docker ps -aq)

# Delete all containers (running and stopped)
echo "Removing all containers..."
docker rm $(docker ps -aq)

# Remove all Docker images
echo "Deleting all Docker images..."
docker rmi $(docker images -q)

# Delete all Docker volumes
echo "Delete all Docker volumes..."
docker volume rm $(docker volume ls -q)

# Delete all Docker networks
echo "Delete all Docker networks..."
docker network rm $(docker network ls -q)

# Optional: Remove unused Docker objects
echo "Removing unused Docker objects..."
docker system prune -af

echo "The Docker environment has been cleared."
