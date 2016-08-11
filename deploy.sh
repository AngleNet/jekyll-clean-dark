#!/bin/bash
#jekyll build --incremental
#cp -rf ./_site/* ../AngleNet.github.io/
#cd ../AngleNet.github.io
git add -A
git commit -m "Commit new blog"
git push

rm -rf _site
jekyll build
cd ../AngleNet.github.io
git rm -rf *
mv ../blog/build/* .
git add -A
git commit -m "Commit a new blog"
git push
