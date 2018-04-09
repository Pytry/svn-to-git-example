#!/usr/bin/env bash
# This should only be run in the newly created/converted GIT repo, and not in the checked out SVN repo
echo "Setting origin to GitHub repository"
git remote add origin https://github.com/Pytry/svn-to-git-example.git

echo "Pushing All"
git push origin --all

echo "Pushing Tags"
git push origin --tags

cd ../../
echo "DONE"