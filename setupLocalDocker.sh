#!/bin/sh
docker build -f Dockerfile.local -t local_atlas .
docker run -it \
  --rm \
  -p 3000:3000 \
  -v `pwd`:/code \
  -t local_atlas \
  bash

