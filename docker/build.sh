#!/usr/bin/env bash

set -ex

docker build --no-cache . -t logickee/hugo_dev 
docker push logickee/hugo_dev

# docker run -it logickee/hugo_dev bash
