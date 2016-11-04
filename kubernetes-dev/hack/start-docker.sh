#! /bin/bash
set -e

sh /cgroupfs-mount
nohup dockerd &
