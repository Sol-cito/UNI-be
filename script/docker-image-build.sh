#!/bin/bash

./gradlew build

docker build -f Dockerfile.dev -t uni-be .

docker run -d --name uni-be -p 8081:8081 uni-be
