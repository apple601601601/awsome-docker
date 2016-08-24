CentOS image with systemd support.

To start this container, cgroups volume must be provided: 

```sh
docker run -itd -v /sys/fs/cgroup:/sys/fs/cgroup feisky/centos
```

Note: This container is running with systemd in a limited context,
with the cgroups filesystem mounted. There have been reports that
if you're using an Ubuntu host, you will need to add `-v /tmp/$(mktemp -d):/run`
in addition to the cgroups mount.
