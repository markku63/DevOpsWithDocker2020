#!/usr/bin/env bash
set -e

# https://denibertovic.com/posts/handling-permissions-with-docker-volumes/
USER_ID=${LOCAL_USER_ID:-9001}
GROUP_ID=${LOCAL_GROUP_ID:-9001}
groupadd -o -g $GROUP_ID user
useradd -s /bin/bash -u $USER_ID -g $GROUP_ID -o -m user
export HOME=/home/user

source $IDF_PATH/export.sh
exec gosu user "$@"
