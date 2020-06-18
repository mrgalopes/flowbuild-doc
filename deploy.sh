#!/bin/bash
#

make html

last_rev="$(git log --pretty="%h" --no-merges -1)"

git add -f ./docs
git commit -m "Updating docs folder for rev ${last_rev}"
git push origin master
