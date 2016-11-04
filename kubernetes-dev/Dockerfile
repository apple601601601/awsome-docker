From centos
MAINTAINER Pengfei Ni <feiskyer@gmail.com>

ENV GOPATH /gopath
ENV PATH /gopath/bin:/usr/local/bin:/usr/local/go/bin/:/usr/local/sbin:/usr/sbin:/usr/bin:/sbin:/bin
WORKDIR /gopath/src/k8s.io/kubernetes

# install development tools
RUN yum install -y git wget vim curl autoconf automake gcc make pkg-config socat

# install golang
RUN curl -sL https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz | tar -C /usr/local -zxf -

# install docker
RUN curl -fsSL https://get.docker.com/ | sh

# install etcd
RUN curl -L https://github.com/coreos/etcd/releases/download/v3.0.13/etcd-v3.0.13-linux-amd64.tar.gz -o etcd-v3.0.13-linux-amd64.tar.gz && tar xzvf etcd-v3.0.13-linux-amd64.tar.gz && /bin/cp -f etcd-v3.0.13-linux-amd64/{etcd,etcdctl} /usr/bin && rm -rf etcd-v3.0.13-linux-amd64*

# get kubernetes source code
RUN go get -u github.com/jteeuwen/go-bindata/go-bindata && \
	mkdir -p $GOPATH/src/k8s.io && \
	git clone https://github.com/kubernetes/kubernetes $GOPATH/src/k8s.io/kubernetes

# add hacking scripts
ADD hack /hack

