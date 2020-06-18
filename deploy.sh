#!/bin/bash
# pre-push hook to make sure generated files match the source files
#
# To enable, run the command
# git config --local core.hooksPath ./.githooks
#

make deploy

last_rev="$(git log --pretty="%h" --no-merges -1)"

git add -f ./docs
git commit -m "Updating docs folder for rev ${last_rev}"
git push origin master
