#!/bin/bash


echo https://github.com/rancher/k3d/releases/
echo https://github.com/fluxcd/flux2/releases/
# curl -s https://fluxcd.io/install.sh | sudo bash

k3d version
flux version

k3d cluster create --config k3d-config.yaml
kubectl delete -n kube-system service traefik
flux bootstrap github --owner=triantium --repository=cloudland2022 --branch=main --path=./clusters/local --personal
