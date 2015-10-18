#!/usr/bin/env bash
set -e

git clone https://github.com/kubernetes/kubernetes.git --branch v1.1.0
KUBE_SKIP_CONFIRMATIONS=y ./kubernetes/build/run.sh hack/build-cross.sh
cp kubernetes/_output/dockerized/bin/linux/amd64/hyperkube hyperkube/hyperkube
docker build -t $IMAGE_NAME hyperkube

