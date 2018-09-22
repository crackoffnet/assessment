FROM jenkins/jenkins
MAINTAINER Garegin Ayvazyan <garegin.ayvazyan@hotmail.com>

USER root
RUN mkdir -p /var/lib/apt/lists/partial
RUN apt-get update && \
    apt-get install -y maven

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

RUN curl -o /tmp/filebeat_6.4.1_amd64.deb https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.4.1-amd64.deb && \
   dpkg -i /tmp/filebeat_6.4.1_amd64.deb &&  apt-get install

COPY filebeat.yml /etc/filebeat/filebeat.yml

COPY ["entrypoint.sh", "/"]
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/bash","-c","./entrypoint.sh"]
