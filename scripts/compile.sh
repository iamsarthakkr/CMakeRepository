#! /bin/bash
# Permission: chmod +x .scripts/compile.sh

ROOT_DIR=$(pwd)
BUILD_DIRECTORY=$ROOT_DIR/build

# Cmake commands
cmake -S $ROOT_DIR -B $BUILD_DIRECTORY
cd $BUILD_DIRECTORY && make && cd $ROOT_DIR