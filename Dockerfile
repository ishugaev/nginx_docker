FROM ubuntu:22.04

ENV container docker

RUN apt-get update && \
    apt-get install -y nginx nano vim more less && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]