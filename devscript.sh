#!/bin/bash

ARG=${1}

if [ "${ARG}" == "" ]; then
  echo "[Script error] Argument is needed!!"
elif [ "${ARG}" == "dkimgbd" ]; then
  sh ./script/docker-image-build.sh build
elif [ "${ARG}" == "dkimgrm" ]; then
  sh ./script/docker-image-build.sh remove
else
  echo "[Script error] Argument '${ARG}' is not defined in the script"
fi
