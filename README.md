<img src="https://www.islas.org.mx/img/logo.svg" align="right" width="256" />

# Jenkins

```shell
sudo adduser jenkins
sudo usermod -aG docker jenkins
sudo usermod -aG root jenkins
sudo chmod 777 /var/run/docker.sock
```

```shell
docker run -d --rm -v /home/ciencia_datos/.vault/.secrets:/.vault/.secrets -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 --name jenkins jenkins/jenkins:lts-jdk11
```
```shell
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

```shell
docker pull islasgeci/jenkins:latest
docker run \
    --detach \
    --name jenkins \
    --publish 50000:50000 \
    --publish 8080:8080 \
    --rm \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume ${HOME}/.vault/.secrets:/.vault/.secrets \
    --volume jenkins_home:/var/jenkins_home \
    islasgeci/jenkins:latest
```

---

ERROR:
```shell
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock:
dial unix /var/run/docker.sock: connect: permission denied
```

SOLVED:
```shell
sudo chmod 777 /var/run/docker.sock
```
