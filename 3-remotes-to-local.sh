#!/usr/bin/env bash
# This should only be run in the newly created/converted GIT repo, and not in the checked out SVN repo
for b in $(git for-each-ref --format='%(refname:short)' refs/remotes/origin)
do
    if [[ $b != *"/tags/"* && $b != *"/trunk" ]]
    then
        echo "Converting branch '"${b/origin\//}"'"
        git branch ${b/origin\//} refs/remotes/$b
        git branch -D -r $b
    fi
done

