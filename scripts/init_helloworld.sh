#!/usr/bin/env bash

# https://gohugo.io/getting-started/quick-start/

set -x

rm -rf *
rm -rf .*

set -ex

hugo new site .

git clone --depth=1 https://github.com/budparr/gohugo-theme-ananke.git themes/ananke

rm -rf themes/ananke/.git

echo 'theme = "ananke"' >> config.toml

hugo new posts/my-first-post.md

cat <<EOT >> content/posts/my-first-post.md
---
title: "My First Post"
date: 2019-03-26T08:47:11+01:00
draft: true
---

louis helloworld
EOT

hugo server -D
