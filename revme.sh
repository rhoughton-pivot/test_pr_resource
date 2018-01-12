#!/bin/bash
#

set +x

ver=`./incr.sh`
git reset --hard origin/master

git checkout master && \
    git checkout -b f${ver} -t origin/master && \
    echo ${ver} > verfile && \
    git add -u && git commit -m "${ver}" && git push origin f${ver} && \



