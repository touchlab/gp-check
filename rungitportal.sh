#!/bin/sh -l

echo "Hellos $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

eval $(ssh-agent)
/initssh.sh

cd /github/workspace

git config --global user.email "kgalligan@gmail.com"
git config --global user.name "Kevin Galligan"

echo "Running: java -jar /core.jar check -m $1 -l info"
java -jar /core.jar check -m $1 -l info