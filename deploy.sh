#!/bin/bash

DOCKER_USERNAME="deep3407"
DOCKER_PASSWORD="dckr_pat_ctha2hwut7Kt9fxc8s2wEUIhmnc"
DOCKER_REPO="dev"
DOCKER_TAG="latest"

echo "Logging in to Docker Hub..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

LOCAL_IMAGE="capstone"

echo "Tagging the Docker image..."
docker tag "${LOCAL_IMAGE}" "$DOCKER_USERNAME/${DOCKER_REPO}:${DOCKER_TAG}"


echo "Pushing the Docker image to Docker Hub..."
docker push "$DOCKER_USERNAME/${DOCKER_REPO}:${DOCKER_TAG}"

