#!/bin/bash

./gradlew build

docker build -f Dockerfile.dev -t solcito/uni-be .

docker run -d -t --name uni-be -p 8081:8081 solcito/uni-be:latest
