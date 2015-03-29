#!/bin/bash

set -o errexit

if [ "$(uname)" == "Darwin" ]; then
  # Do something under Mac OS X platform
  echo "OSX"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  # Do something under Linux platform
  echo "Linux"
  apt-get -q update
  apt-get install -y build-essential
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  # Do something under Windows NT platform
  echo "Windows"
fi

