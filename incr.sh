#!/bin/bash

val=`cat verfile`

newval=$((val + 1))

echo ${newval} > verfile

cat verfile
