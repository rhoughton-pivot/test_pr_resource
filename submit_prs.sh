#!/bin/bash
#

set +x

for branch in `git branch |grep -v master`; do
  git checkout -b "$branch"
  hub pull-request -m "$(git log -1 --pretty=%B)";
  
done
