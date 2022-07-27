#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="jenniferosei/ml-microservice-kubernetes"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-microservice-kubernetes --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-microservice-kubernetes 8000:80
