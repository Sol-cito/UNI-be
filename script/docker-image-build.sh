#!/bin/bash

ARG=${1}

if [ "${ARG}" == "build" ]; then
  ./gradlew build

  docker build -f Dockerfile.dev -t solcito/uni-be .

  docker run -d -t --name uni-be -p 8081:8081 solcito/uni-be:latest

  docker push solcito/uni-be:latest

elif [ "${ARG}" == "remove" ]; then
  docker stop uni-be

  docker rm uni-be

  docker rmi solcito/uni-be
else
  echo "[ERROR] check docker-image-build arg!"
fi

