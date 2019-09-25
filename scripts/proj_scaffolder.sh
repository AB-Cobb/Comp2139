#!/bin/bash
#proj_scaffolfer.sh

mk='mkdir '

echo $0 #will give you file name
echo $1 #first argument
echo $CONN_STRING

${mk} $1
cd $1 #changes folder for script but NOT command line

#readME
touch README.md
echo "# $2" >> README.md

# fetch git ignore
curl https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore -o .gitignore

#create dir
mkdir scripts
mkdir src

#initialise git
git init
git add .
git commit -m "initial commit"
git branch development


ls -la

