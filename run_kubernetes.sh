#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=nsertq/mydev

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=mydev mydev

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
docker run -it -p 8000:80 mydev
kubectl port-forward deployment/mydev 8000:80
