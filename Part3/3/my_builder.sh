#!/bin/bash
if [[ $# -ne 2 ]]
then
    echo "Download, build and publish a GitHub repo as a Docker image"
    echo "Usage:"
    echo "$(basename $0) <GitHub URL> <hub-user/repo-name[:tag]>"
    echo "Where <GitHub URL> is an URL to a GitHub repository with a Dockerfile,"
    echo "hub-user is your Docker Hub username and repo-name is a Docker Hub repository name."
    echo "tag is an optional tag for the Docker image, it defaults to 'latest'"
    echo
    echo "Requires git and docker commands to be installed in current environment."
    echo "Log in to Docker Hub before running this script"
    exit 64
fi
BUILD_DIR=$(mktemp -d .buildXXXXXXX)
REPO=$1
IMAGE=$2
git clone --depth 1 --recurse-submodules --shallow-submodules "$REPO" "$BUILD_DIR"
pushd $BUILD_DIR
if [[ -e 'Dockerfile' ]]
then
    docker build -t "$IMAGE" .
    BUILD_OK=$?
else
    echo "Not a Docker project!"
    BUILD_OK=1
fi
popd
rm -rf $BUILD_DIR
if [[ $BUILD_OK -ne 0 ]]
then
    echo "Build failed"
    exit $BUILD_OK
else
    if [[ -v DOCKER_USERNAME && -e /app/password.txt ]]
    then
        cat /app/password.txt | docker login --username $DOCKER_USERNAME --password-stdin
    fi
    docker push "$IMAGE"
fi