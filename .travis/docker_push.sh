#!/bin/bash

DOCKER_REPOSITORY=${DOCKER_REPOSITORY:-wallarm}

echo "$DOCKER_PASS" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag pgbouncer-config-reload $DOCKER_REPOSITORY/pgbouncer-config-reload:$TRAVIS_TAG
docker push $DOCKER_REPOSITORY/pgbouncer-config-reload:$TRAVIS_TAG
docker tag pgbouncer-config-reload $DOCKER_REPOSITORY/pgbouncer-config-reload:latest
docker push $DOCKER_REPOSITORY/pgbouncer-config-reload:latest
