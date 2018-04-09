#!/usr/bin/env bash
for b in $(git for-each-ref --format='%(refname:short)' refs/remotes);
do
    git branch $b refs/remotes/$b && git branch -D -r $b;
done
