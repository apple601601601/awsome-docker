#! /bin/bash
set -e

sh /hack/cgroupfs-mount
nohup dockerd &
