#!/bin/bash

export KUBERNETES_PROVIDER=local

cd $GOPATH/src/k8s.io/kubernetes
make test-e2e-node FOCUS="InitContainer" TEST_ARGS="--runtime-integration-type=cri"


