sh deploy.sh

bash init-slaves.sh

ON SLAVES --> bash accept-slave.sh


TO SCALE --> 
- ADD next mongo service to docker-compose.yml
- ADD next mongo service to init-slaves.sh 
- bash accept-slave.sh on all slaves

AFTER MANAGER RESTART SHOULD RUN "bash accept-slave.sh" again on all slaves
