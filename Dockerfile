FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt update && apt install --yes docker.io

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

USER jenkins