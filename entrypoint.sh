#!/bin/sh

set -eu
set -o pipefail

LFS_LISTEN="tcp://:9999"
LFS_HOST="127.0.0.1:9999"
LFS_METADB="/data/lfs.db"
LFS_CONTENTPATH="/data/lfs.content"
LFS_ADMINUSER="xxxxxx"
LFS_ADMINPASS="xxxxxx"
#LFS_CERT="mine.crt"
#LFS_KEY="mine.key"

export LFS_LISTEN LFS_HOST LFS_METADB LFS_CONTENTPATH LFS_ADMINUSER LFS_ADMINPASS

./lfs-test-server
