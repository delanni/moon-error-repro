#!/usr/bin/env bash

# populate output
moon run :make-phony-file

# clear cache to trigger run
rm -rf .moon/cache

# run again, to cause the error
moon run :make-phony-file
