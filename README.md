# NGINX with RTMP Streaming Module & FFMPEG
[![CircleCI](https://travis-ci.org/DavidBindloss/nginx-rtmp-ffmpeg.svg?branch=master)](https://travis-ci.org/DavidBindloss/nginx-rtmp-ffmpeg)
[![Docker Stars](https://img.shields.io/docker/stars/dbindloss/nginx-rtmp-ffmpeg.svg)](hub)
[![Docker Pulls](https://img.shields.io/docker/pulls/dbindloss/nginx-rtmp-ffmpeg.svg)](hub)

A simple easy to use all-in-one box for creating a streaming RTMP server.

This project is on the [Docker Hub](https://hub.docker.com) @ [dbindloss/nginx-rtmp-ffmpeg](https://registry.hub.docker.com/u/dbindloss/nginx-rtmp-ffmpeg/), and on [Github](https://github.com) @ [david_bindloss/nginx-rtmp-ffmpeg](https://github.com/DavidBindloss/nginx-rtmp-ffmpeg)

If you have any issues, please raise them as a [tracked issue.](https://github.com/DavidBindloss/nginx-rtmp-ffmpeg/issues), I don't check the comments on Docker Hub.

# Installation

First pull the docker image

```
docker pull dbindloss/nginx-rtmp-ffmpeg
```

Then to run

```
docker run dbindloss/nginx-rtmp-ffmpeg
```

The nginx config file is located at `/etc/nginx/nginx.conf` so if you want to override it with your own you can either write your own Dockerfile

```
FROM dbindloss/nginx-rtmp-ffmpeg

COPY nginx.conf /etc/nginx/nginx.conf
```

Or you can volume mount a new nginx configuration file from the command line

```
docker run -v nginx.conf:/etc/nginx/nginx.conf dbindloss/nginx-rtmp-ffmpeg
```

The basic nginx.conf doesn't allow you to do all that much. Some other nginx config examples can be found in the examples directory.


