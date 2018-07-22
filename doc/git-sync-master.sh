#!/bin/bash
set -x 

git fetch upstream -v
git fetch origin -v

git checkout master
git branch -v

git merge upstream/master -v --no-ff --no-edit
git push origin master -v

