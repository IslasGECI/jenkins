FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt update && apt install --yes docker.io
USER jenkins
