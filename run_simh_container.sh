#!/bin/bash

docker-compose up -d
docker exec -it vax_simh_1 ./vax
docker-compose down
