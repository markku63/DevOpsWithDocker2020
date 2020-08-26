#!/usr/bin/bash
if [ $# -ne 1 ]
then
    echo "Download, build and publish a GitHub repo as a Docker image"
    echo "Usage:"
    echo "$0 <repository URL>"
    echo "Where <repository URL> is an URL to a GitHub repository with a Dockerfile"
    exit 64
fi
BUILD_DIR=$(mktemp -d .buildXXXXXXX)
REPO=$1
git clone --depth 1 --recurse-submodules --shallow-submodules $REPO $BUILD_DIR
pushd $BUILD_DIR
if [ -e 'Dockerfile' ]
then
    docker build .
else
    echo "Not a Docker project!"
    exit 1
fi
popd
rm -rf $BUILD_DIR