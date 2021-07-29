FROM jenkins/jenkins:lts-jdk11
RUN apt update && apt install --yes docker.io
