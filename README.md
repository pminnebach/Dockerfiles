# Dockerfiles for Windows containers

This repo contains my personal dockerfiles. They are made to solve specific problems i encountered.

Also, windows containers are fun since not a lot containers exist yet, it was a nice challenge to make them myself.

## How to run.

First, build the containers you want.

    docker build -t <tag> .

Second, since windows containers does not create the local folders upon running, you must create them yourself before you map them to a container.

### Sabnzbd

    docker run --restart=always \
        -d \
        -p 7878:7878 \
        -v <local\path>:C:\Config \
        -v <local\path>:C:\Downloads \
        radarr

### Sickrage

    docker run --restart=always \
        -d \
        -p 8080:8080 \
        -v <local\path>:C:\Config \
        -v <local\path>:C:\Downloads \
        -v <local\path>:C:\Tv \
        sabnzbd

### Radarr

    docker run --restart=always \
        -d \
        -p 7878:7878 \
        -v <local\path>:C:\Config \
        -v <local\path>:C:\Downloads \
        -v <local\path>:C:\Movies \
        radarr

### Plex

I haven't figured out how to keep Plex running inside the container.

## Notes

These containers are made to just run and are not optimized yet for containersize. With the fall release of Windows Server 2016 (1709) and the new smaller Nanoserver containers i will try and convert them.

Also, the folders are mapped in a certain way so that SickRage and Radar can do proper download handeling and importing of downloaded movies and shows.

## TODO
* Change SickRage container to use FROM python:2-windowsservercore.
* Convert all images where possible to nanoserver (upon release of ws2016 1709).
** Test multi-stage builds where possible. (nanoserver suposedly doesn't have the windows installer subsystem.)
* Comment code with links to original source code.
* Create docker-compose.yml with all images in them.
