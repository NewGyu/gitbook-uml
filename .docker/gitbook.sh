#!/bin/sh -xe

SRC_DIR=/tmp/src
BUILD_DIR=/tmp/_book

cd $SRC_DIR
gitbook install

case "$1" in 
  publish)
    gitbook build $SRC_DIR $BUILD_DIR
    aws s3 sync $BUILD_DIR s3://gitbook.kinoboku.net/
    ;;
  serve)
    gitbook serve $SRC_DIR $BUILD_DIR
    ;;
  *)
    echo "Usage: $0 {publish|serve}"
    exit 1
    ;;
esac
