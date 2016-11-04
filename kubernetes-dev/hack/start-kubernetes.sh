#!/bin/bash
export KUBERNETES_PROVIDER=local
# export ALLOW_SECURITY_CONTEXT=yes
# export NET_PLUGIN=kubenet
# export EXPERIMENTAL_RUNTIME_INTEGRATION_TYPE=cri

cd $GOPATH/src/k8s.io/kubernetes
hack/local-up-cluster.sh
