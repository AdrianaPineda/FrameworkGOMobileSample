#!/bin/bash

PROJECT_PATH="$GOPATH/src/github.com/dcu/gomobile-sample"

cd $PROJECT_PATH
make ios
cd -

ln -sf $PROJECTPATH/Sample.framework .
