#!/usr/bin/env bash

set -ex

aria2c -x 16 -s 99999 https://github.com/gohugoio/hugo/releases/download/v0.74.3/hugo_extended_0.74.3_Linux-64bit.deb

sudo dpkg -i hugo_extended_0.74.3_Linux-64bit.deb