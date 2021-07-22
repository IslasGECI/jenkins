```
sudo adduser jenkins
sudo usermod -aG docker jenkins
sudo usermod -aG root jenkins
sudo chmod 777 /var/run/docker.sock
```

```
docker run -d --rm -v /home/ciencia_datos/.vault/.secrets:/.vault/.secrets -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 --name jenkins jenkins/jenkins:lts-jdk11
```
```
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

```
$ docker exec -u 0 -it jenkins bash
# apt update && apt install -y docker.io
# docker run hello-world
# exit
```

