#!/bin/bash

ARG=${1}

if [ "${ARG}" == "" ]; then
  echo "[Script error] Argument is needed!!"
elif [ "${ARG}" == "img" ]; then
  sh ./script/docker-image-build.sh
else
  echo "[Script error] Argument '${ARG}' is not defined in the script"
fi
