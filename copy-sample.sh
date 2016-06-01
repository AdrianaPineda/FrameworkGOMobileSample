#!/bin/bash
​
set -u
​
SAMPLE_PROJECT_PATH="$GOPATH/src/github.com/dcu/gomobile-sample"
SAMPLE_FRAMEWORK="Sample.framework"
​
cd $SAMPLE_PROJECT_PATH
make ios
cd -
​
rm -rf $SAMPLE_FRAMEWORK
cp -r $SAMPLE_PROJECT_PATH/$SAMPLE_FRAMEWORK .