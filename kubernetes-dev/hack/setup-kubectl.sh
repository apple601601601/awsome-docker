#!/bin/bash
export KUBERNETES_PROVIDER=local

cd $GOPATH/src/k8s.io/kubernetes
cluster/kubectl.sh config set-cluster local --server=http://127.0.0.1:8080 --insecure-skip-tls-verify=true
cluster/kubectl.sh config set-context local --cluster=local
cluster/kubectl.sh config use-context local

