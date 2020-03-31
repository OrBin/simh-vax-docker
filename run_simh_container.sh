#!/bin/bash

PROJECT_NAME='vax'

docker-compose -p $PROJECT_NAME up -d
docker exec -it vax_simh_1 ./vax
docker-compose -p $PROJECT_NAME down
