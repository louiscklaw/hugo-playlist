#!/usr/bin/env bash

set -ex

hugo -D

hugo server \
  -D \
  --bind=0.0.0.0 \
  --disableFastRender
