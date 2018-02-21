# Dockerfile for a simple Nginx stream replicator
FROM alpine:latest
MAINTAINER David Bindloss <dbindloss+docker@gmail.com>

# Set up user
ENV USER nginx
RUN adduser -s /sbin/nologin -D -H ${USER}

# Install prerequisites and update certificates
RUN apk --update --no-cache add \
      nginx-mod-rtmp \
      ffmpeg && \
      rm -rf /var/cache/apk/*

# Forward logs to Docker
RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

# Set up config file
COPY nginx.conf /etc/nginx/nginx.conf

# Run the application
USER ${USER}

EXPOSE 1935

CMD ["nginx", "-g", "pid /tmp/nginx.pid; daemon off;"]
