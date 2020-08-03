#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=cardene/ml-predict-house-price:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-predict-house-price --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose pod ml-predict-house-price --type=LoadBalancer --port=8000 --target-port=80
