# Dockerfiles for Windows containers

This repo contains my personal dockerfiles. They are made to solve specific problems i encountered.

Also, windows containers are fun since not a lot containers exist yet, it was a nice challenge to make them myself.

## How to run.

First, build the containers you want.

    docker build -t <tag> .

Second, since windows containers does not create the local folders upon running, you must create them yourself before you map them to a container.

### Sabnzbd

    docker run --rm \
        -d \
        -p 7878:7878 \
        -v <local\path>:C:\Config \
        -v <local\path>:C:\Downloads \
        radarr

### Sickrage

    docker run --rm \
        -d \
        -p 8080:8080 \
        -v <local\path>:C:\Config \
        -v <local\path>:C:\Downloads \
        -v <local\path>:C:\Tv \
        sabnzbd

### Radarr

    docker run --rm \
        -d \
        -p 7878:7878 \
        -v <local\path>:C:\config \
        -v <local\path>:C:\Downloads \
        -v <local\path>:C:\Movies \
        radarr

### Plex

I haven't figured out how to keep Plex running inside the container.

## Notes

These containers are made to just run and are not optimized yet for containersize. With the fall release of Windows Server 2016 (1709) and the new smaller Nanoserver containers i will try and convert them.
