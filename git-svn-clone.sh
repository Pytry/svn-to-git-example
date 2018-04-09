#!/usr/bin/env bash
git svn clone \
    svn://localhost/home/bob/vcs-repos/svn-repo/svn-to-git-example \
    svn-to-git-example \
    --authors-file=/home/bob/Development/authors.txt

git svn clone svn://localhost/home/bob/vcs-repos/svn-repos/svn-to-git-example --authors-file=/home/bob/Development/authors.txt
