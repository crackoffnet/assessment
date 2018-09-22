Readme.md

Tools used:

- jenkins:latest
- logstash:latest
- elasticsearch:2
- kibana:4
- rabbitmq
- sonarqube:6.7.1
- postgres:10.1
- sonatype/nexus3


URLs/Credentials:

- jenkins - http://{DOCKER_IP}:50000/, admin/admin
- elasticsearch:2 - http://{DOCKER_IP}:9200/
- kibana:4 - http://{DOCKER_IP}:5601/
- rabbitmq - http://{DOCKER_IP}:15672, rabbitmq/rabbitmq
- sonarqube:6.7.1 - http://{DOCKER_IP}:9000
- postgres:10.1 - POSTGRES_DB=sonarqube
- sonatype/nexus3 - http://{DOCKER_IP}:8081, admin/admin123


How to run?

- git clone https://github.com/crackoffnet/assessment.git
- sudo docker-compose up -d --build --force-rebuild
