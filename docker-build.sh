#!/bin/bash
name=jhls
ver=0.1
docker_user=sorc

cat key.bak  | docker login --username ${docker_user}  --password-stdin
docker buildx build \
  --platform linux/amd64 \
  --build-arg VER=${ver} \
  --push \
  --tag sorc/${name}:${ver} \
  --tag sorc/${name}:latest .
