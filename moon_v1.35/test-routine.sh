#!/usr/bin/env bash

set -x

if [[ "$(cat .moon/workspace.yml | grep unstable_remote)" == "" ]]; then
  echo "This test requires unstable_remote to be set in workspace.yml"
  exit 1
fi

mkdir -p target/test

npm i

moon --version

# populate output
moon run :make-phony-file

# clear cache to trigger run
rm -rf .moon/cache

# run again, to cause the error
moon run :make-phony-file
