FROM cassandra:3.0

ENV MAX_HEAP_SIZE 256M
ENV HEAP_NEWSIZE 128M

# To wait for cassandra startup from docker-compose
RUN apt-get update && apt-get install -y wget --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
