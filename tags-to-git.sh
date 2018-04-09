#!/usr/bin/env bash
for t in $(git for-each-ref --format='%(refname:short)' refs/remotes/origin/tags)
do
    echo $t
    echo ${t/tags\//}
    git tag ${t/tags\//} $t
    git branch -D -r $t
done
