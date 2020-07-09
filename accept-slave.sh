#!/bin/bash

docker exec -it $(docker ps -f name=mongo -q)  bash -c "echo 'rs.slaveOk()' | mongo"
