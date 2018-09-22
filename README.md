Readme.md

Tools used:
1. jenkins:latest
2. logstash:latest
3. elasticsearch:2
4. kibana:4
5. rabbitmq
6. sonarqube:6.7.1
7. postgres:10.1
8. sonatype/nexus3

URLs/Credentials:
1. jenkins - http://{DOCKER_IP}:50000/, admin/admin
2. elasticsearch:2 - http://{DOCKER_IP}:9200/
3. kibana:4 - http://{DOCKER_IP}:5601/
5. rabbitmq - http://{DOCKER_IP}:15672, rabbitmq/rabbitmq
6. sonarqube:6.7.1 - http://{DOCKER_IP}:9000
7. postgres:10.1 - POSTGRES_DB=sonarqube
8. sonatype/nexus3 - http://{DOCKER_IP}:8081, admin/admin123

How to run?
1. git clone https://github.com/crackoffnet/assessment.git
2. sudo docker-compose up -d --build --force-rebuild
