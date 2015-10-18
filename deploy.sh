#!/usr/bin/env bash
set -e

docker push $IMAGE_NAME
curl -uthesamet:$BINTRAY_API_KEY -X PUT \
  "https://api.bintray.com/content/thesamet/kubernetes/kubernetes/${KUBE_REV}/${KUBE_REV}/linux-amd64/kubelet?publish=1" -T kubernetes/_output/dockerized/bin/linux/amd64/kubelet
curl -uthesamet:$BINTRAY_API_KEY -X PUT \
  "https://api.bintray.com/content/thesamet/kubernetes/kubernetes/${KUBE_REV}/${KUBE_REV}/linux-amd64/kubectl?publish=1" -T kubernetes/_output/dockerized/bin/linux/amd64/kubectl
curl -uthesamet:$BINTRAY_API_KEY -X PUT \
  "https://api.bintray.com/content/thesamet/kubernetes/kubernetes/${KUBE_REV}/${KUBE_REV}/darwin-amd64/kubectl?publish=1" -T kubernetes/_output/dockerized/bin/darwin/amd64/kubectl

echo =====================================
echo Pushed image $IMAGE_NAME
echo Uploaded artifacts for $REV

