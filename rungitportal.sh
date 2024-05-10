#!/bin/sh -l

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

eval $(ssh-agent)
/initssh.sh

cd /github/workspace

git config --global user.email "info@touchlab.co"
git config --global user.name "Checking Git"

java -jar /core.jar check $1