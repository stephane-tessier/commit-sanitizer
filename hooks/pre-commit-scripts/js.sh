#!/bin/sh

# http://stackoverflow.com/questions/1837681/pre-commit-hook-for-jslint-in-mercurial-and-git
# reviewed by stessier@clever-age.com
#
# Pre-commit hook passing files through jslint
#
# This ensures that all js, html and json files are valid and conform
# to expectations.

if [ "$JS_CHECK" != "" ] ; then
  for file in $(git diff-index --name-only --diff-filter=ACM --cached HEAD -- | grep -P '\.((js)|(html)|(json))$'); do
  if $JS_CHECK $file 2>&1 | grep 'No errors found' ; then
    echo ""
    echo "jshint passed ${file}"
    exit 0
  else
    $JS_CHECK $file
    echo ""
    echo "Jhint errors found."
    echo "Commit aborted."
    exit 1
    fi  
  done
fi