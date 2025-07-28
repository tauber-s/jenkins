FROM jenkins/jenkins

USER root

RUN apt-get update && \
    apt-get install -y docker.io docker-compose git && \
    apt-get clean

RUN /usr/local/bin/install-plugins.sh docker-workflow git workflow-aggregator

USER jenkins