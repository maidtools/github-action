# Container image that runs your code
FROM composer:2.1.11

RUN apk add --update docker openrc rsync
RUN rc-update add docker boot

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
