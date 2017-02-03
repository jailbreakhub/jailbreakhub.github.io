#!/bin/bash
# Pushes DEBs to the Packages file, bzips it up, and pushes it to the repo.

dpkg-scanpackages -m debs / > Packages

bzip2 -fks Packages

git add .

read -p "Enter commit title: "  commit
git commit -m "$commit"

git push
