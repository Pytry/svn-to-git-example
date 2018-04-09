#!/usr/bin/env bash
#git svn clone \
#    svn://localhost/home/bob/vcs-repos/svn-repos/svn-to-git-example/trunk \
#    svn-to-git-example \
#    --authors-file=/home/bob/Development/svn-to-git-example/trunk/authors.txt
git svn clone file:///home/bob/vcs-repos/svn-repos/svn-to-git-example -T trunk -b branches -t tags
