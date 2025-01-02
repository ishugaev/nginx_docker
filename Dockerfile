FROM nginx:latest

ENV container=docker
ENV DEBIAN_FRONTEND=noninteractive

# Set timezone to avoid interactive prompts
ENV TZ=Etc/UTC

RUN apt-get update && \
    apt-get install -y php nano vim util-linux less && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx-selfsigned.key \
    -out /etc/nginx/ssl/nginx-selfsigned.crt \
    -subj "/C=US/ST=State/L=City/O=Organization/OU=Department/CN=localhost"

RUN htpasswd -cb /etc/nginx/passwords admin changeme
RUN rm -f /etc/nginx/conf.d/default.conf

COPY ./conf.d/ /etc/nginx/conf.d/
COPY ./data/ /var/www/yoursite/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
