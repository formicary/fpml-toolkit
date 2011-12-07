#!/bin/bash
git submodule init
git submodule update
for I in Java "C#" Files
do
./git-svnify.sh $I &
done
wait
