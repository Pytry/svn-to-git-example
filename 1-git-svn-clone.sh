#!/usr/bin/env bash
# This assumes a local svn repository with no authentication required.
# The users name is "bob" ... I guess.
# In reality, this is cloning and converting itself from svn to git
git svn clone \
    file:///home/bob/vcs-repos/svn-repos/svn-to-git-example \
    target/svn-to-git-example \
    -T trunk \
    -b branches \
    -t tags \
    --authors-file=/home/bob/Development/svn-to-git-example/trunk/authors.txt
cd ./target/svn-to-git-example
sudo chmod +x *.sh
echo "Please change directories to './target/svn-to-git-example' before executing step 2".
