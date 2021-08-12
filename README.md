# simple-stund-docker

Dockerfile for running simple stund STUN server.

# Usage
First, clone this repository

```sh
git clone https://github.com/CBR250/simple-stund-docker.git
```

Build and start the container.

```sh
cd simple-stund-docker
sudo docker build -t stund .
sudo docker run -p 3478:3478 -p 3478:3478/udp stund:latest
```

Run a Docker image as a container

```sh
sudo docker run -i -t    stund:latest    /bin/bash
```
