# Container image that runs your code
FROM composer:2.1.11

RUN export DEBIAN_FRONTEND=noninteractive
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
