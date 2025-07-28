FROM jenkins/jenkins

USER root

RUN apt-get update && \
    apt-get install -y docker.io docker-compose git && \
    apt-get clean

USER jenkins

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt