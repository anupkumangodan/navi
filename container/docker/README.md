yavin can be easily deployed using docker containers.We maintain
multiple dockerfiles for different types of images. However there
will be one common base image.

# Docker registry

We use docker hub to keep our images updated and available.
Docker hub is integrated back to github. It will detect changes
to the master branch and build (and tag) images automatically.
The permission to docker hub is limited to few users only.

https://hub.docker.com/repository/docker/verizonmedia/yavin/general
[Yavin DockerHub](https://hub.docker.com/repository/docker/verizonmedia/yavin/general)

```
org: verizonmedia
repo: yavin
```

# Docker file for base image

We create a base image using Alpine Linux. This base image
will have all the requried dependencies available. It will
not have any entrypoint.

```
Dockerfile.alpine
```

## Yavin Base image
For any other environments like heroku (or cloud) use base image ```verizonmedia/yavin:alpha```
In your custom Dockerfile you can start as:
```
FROM verizonmedia/yavin:alpha
```

# Docker file for local demo
docker build -f container/docker/Docker.alpine

```
Dockerfile.demo_local
```

## Yavin Local demo image
For any other environments like heroku (or cloud) use base image ```verizonmedia/yavin:demo_local```
To run yavin demo using docker container:
```
docker run 9999:8080 verizonmedia/yavin:demo_local
```

# Heroku launch
Coming soon...
