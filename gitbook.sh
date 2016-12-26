#!/bin/sh -xe

SRC_DIR=/tmp/src
BUILD_DIR=/tmp/_book

cd $SRC_DIR
gitbook install

case "$1" in 
  build)
    gitbook build $SRC_DIR $BUILD_DIR
    ;;
  serve)
    gitbook serve $SRC_DIR $BUILD_DIR
    ;;
  *)
    echo "Usage: $0 {build|serve}"
    exit 1
    ;;
esac
