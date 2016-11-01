#!/bin/bash

docker build --pull --force-rm -t mesospark-local . && \
docker tag mesospark-local dockerepo:5000/mesospark-local:1 && \
docker push dockerepo:5000/mesospark-local:1
