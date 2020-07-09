docker stack deploy -c docker-compose.yml sil

bash init-slaves.sh


ON SLAVES --> bash accept-slave.sh


TO SCALE --> 
- ADD next mongo service to docker-compose.yml
- ADD next mongo service to init-slaves.sh 
- bash accept-slave.sh on all slaves
