#!/bin/bash

docker pull librecores/librecores-ci-modules
CI_DOCKER=`docker run -dti -v ${PWD}/tools:/tools librecores/librecores-ci-modules /bin/bash`
docker cp test.sh $CI_DOCKER:/tmp
docker exec -ti $CI_DOCKER /tmp/test.sh
docker stop $CI_DOCKER
docker rm $CI_DOCKER
