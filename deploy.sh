#!/bin/bash
#jekyll build --incremental
#cp -rf ./_site/* ../AngleNet.github.io/
#cd ../AngleNet.github.io
blog=/home/anglenet/repo/anglenet.github.io
git add -A
git commit -m "Commit new blog"
git push

rm -rf _site
jekyll build
cd $blog && git rm -rf *
cd -
mv _site/* $blog

cd $blog && git add -A && git commit -m "Commit a new blog" && git push
