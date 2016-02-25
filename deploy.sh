#!/bin/bash
#jekyll build --incremental
#cp -rf ./_site/* ../AngleNet.github.io/
#cd ../AngleNet.github.io
#git add -A
#git commit -m "Commit new blog"
#git push

jekyll clean
jekyll build 
cd ../AngleNet.github.io
git rm -rf *
mv ../blog/_site/* .
git add -A
git commit -m "Commit a new blog"
git push
