#!/bin/bash
#jekyll build --incremental
#cp -rf ./_site/* ../AngleNet.github.io/
#cd ../AngleNet.github.io
#git add -A
#git commit -m "Commit new blog"
#git push

rm -rf _site
jekyll 
cd ../AngleNet.github.io
git rm -rf *
mv ../blog/_site/* .
git add -A
git commit -m "Commit a new blog"
git push
