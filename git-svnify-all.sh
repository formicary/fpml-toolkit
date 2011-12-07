#/bin/bash
for I in Java "C#" Files
do
./git-svnify.sh $I &> /dev/null &
done
wait
