#!/bin/bash

if [[ ! -d "src/" ]]
then
    echo "Cloning simh..."
    git clone https://github.com/simh/simh.git src
fi

echo "Building docker image"
docker build -t orbin/simh-vax .
