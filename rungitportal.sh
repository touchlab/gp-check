#!/bin/sh -l

echo "Hellos $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

eval $(ssh-agent)
/initssh.sh

cd /github/workspace

echo "Running: java -jar /core.jar check -m $1 -l info"
java -jar /core.jar check -m $1 -l info