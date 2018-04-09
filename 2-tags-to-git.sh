#!/usr/bin/env bash
# This should only be run in the newly created/converted GIT repo, and not in the checked out SVN repo
for t in $(git for-each-ref --format='%(refname:short)' refs/remotes/origin/tags)
do
    echo "Converting tag '"${t/tags\//}"'"
    git tag ${t/tags\//} $t
    git branch -D -r $t
done
