#!/bin/bash
# Scriptacular - gitinit.sh
# Initialize a directory with git, stage and commit existing files
# Copyright 2013 Christopher Simpkins
# MIT License
FILE_TYPE="."
INITIAL_COMMIT_MESSAGE="Initial commit"
GIT_REMOTE="https://github.com/rbrtwng/angularwork"

echo "***initializing git***"

if [ -d ".git" ]; then

#if [ -d ".gitttt" ]; then
  echo "This directory has already been initialized with git."
else
  git init
  if (( $? )); then
      echo "Unable to initialize your directory"
      exit 1
  fi
  
  git config --global user.name "Robert Wang"
  git config --global user.email "rbrtwng.cn@gmail.com"
  git config --global credential.helper cache
fi

git remote -v | grep 'github'
  
if (( $? )); then
    git remote add origin $GIT_REMOTE
      if (( $? )); then
      echo "Unable to add remote repo"
      exit 1
      fi
    echo "***added remote repo***"
fi

echo "***initialized git***"

echo "***installing bower***"

bower > /dev/null 2>&1

if (( $? )); then
      sudo npm install bower > /dev/null 2>&1
    if (( $? )); then
      echo "Unable to install bower"
      exit 1
    fi
else
    echo "bower is already installed"
fi

echo "***installed bower***"

echo "***installing grunt***"

grunt > /dev/null 2>&1

if (( $? )); then
      sudo npm install grunt-cli > /dev/null 2>&1
    if (( $? )); then
      echo "Unable to install grunt"
      exit 1
    fi
else
    echo "grunt is already installed"
fi

echo "***installed grunt***"

cd conFusion

sudo npm install grunt --save-dev

sudo npm install grunt-contrib-jshint --save-dev

sudo npm install jshint-stylish --save-dev

sudo npm install time-grunt --save-dev

sudo npm install jit-grunt --save-dev

sudo npm install grunt-contrib-copy --save-dev

sudo npm install grunt-contrib-clean --save-dev

sudo npm install grunt-contrib-concat --save-dev

sudo npm install grunt-contrib-cssmin --save-dev

sudo npm install grunt-contrib-uglify --save-dev

sudo npm install grunt-filerev --save-dev

sudo npm install grunt-usemin --save-dev

sudo npm install grunt-contrib-watch --save-dev

sudo npm install grunt-contrib-connect --save-dev


