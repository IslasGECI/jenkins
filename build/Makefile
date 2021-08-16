.PHONY: \
	build \
	run

build:
	docker build --tag islasgeci/jenkins:latest .

run:
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
