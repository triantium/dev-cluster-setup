#!/bin/bash


echo https://github.com/rancher/k3d/releases/
echo https://github.com/fluxcd/flux2/releases/
# curl -s https://fluxcd.io/install.sh | sudo bash

k3d version
flux version

k3d cluster create local

flux bootstrap git \
  --url=ssh://git@<host>/<org>/<repository> \
  --branch=<my-branch> \
  --path=clusters/my-cluster