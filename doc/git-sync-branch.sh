#!/bin/bash
set -x 

git checkout feature/offline-missa-creation 
git branch -v

git merge master -v --no-ff --no-edit
git push origin feature/offline-missa-creation -v

