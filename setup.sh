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
      npm install -g bower > /dev/null 2>&1
    if (( $? )); then
      echo "Unable to install bower"
      exit 1
    fi
else
    echo "bower is already installed"
fi

echo "***installed bower***"



