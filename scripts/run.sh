#! /bin/bash
# Permission: chmod +x .scripts/run.sh

ROOT_DIR=$(pwd)
BUILD_DIRECTORY=$ROOT_DIR/build

# Cmake commands
cmake -S $ROOT_DIR -B $BUILD_DIRECTORY
cd $BUILD_DIRECTORY && make && cd $ROOT_DIR

# Run the executable
clear
$BUILD_DIRECTORY/out