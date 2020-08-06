#!/usr/bin/env bash

# https://gohugo.io/getting-started/quick-start/

set -x

rm -rf *
rm -rf .*

set -ex

rsync -avzh --exclude public ../$@/ .

hugo -D

hugo serve -D
