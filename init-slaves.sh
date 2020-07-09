#!/bin/bash

echo "Intializing replica set on master"
replicate="\
rs.initiate(); \
sleep(1000); \
cfg = rs.conf(); \
cfg.members[0].host = \"mongo1:27017\"; \
rs.reconfig(cfg); \
rs.add({ host: \"mongo2:27017\", priority: 0.5 }); \
rs.status(); \
"

docker exec -it $(docker ps -f name=mongo -q)  bash -c "echo '${replicate}' | mongo"
