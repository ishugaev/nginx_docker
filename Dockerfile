FROM ubuntu:22.04

ENV container=docker
ENV DEBIAN_FRONTEND=noninteractive

# Set timezone to avoid interactive prompts
ENV TZ=Etc/UTC

RUN apt-get update && \
    apt-get install -y nginx php nano vim util-linux less && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN cd /etc/nginx/sites-enabled && unlink default

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
