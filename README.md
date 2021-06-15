# Papercut NNTP server inside Docker container

## Prerequisites
Python 2
Linux

## Setup

Host "app" directory is mounted on "/usr/src/app" inside the container.

Runing bash inside the container :
```
docker run -it --rm --name thdnews -v "$PWD/app:/usr/src/app" -w /usr/src/app python:3 bash
```

