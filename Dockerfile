FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt update && apt install --yes docker.io

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY config/plugins.txt /usr/share/jenkins/ref/plugins/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins/plugins.txt --verbose

USER jenkins