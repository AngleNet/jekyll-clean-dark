#!/bin/bash
#jekyll build --incremental
#cp -rf ./_site/* ../AngleNet.github.io/
#cd ../AngleNet.github.io
blog=/home/anglenet/repo/anglenet.github.io
local_url="http://localhost:7777"
online_url="https://anglenet.github.io"

sed -i /^url/d _config.yml
echo "url: $online_url" >> _config.yml
rm -rf _site
jekyll build
sed -i /^url/d _config.yml
echo "url: $local_url" >> _config.yml

cd $blog && git rm -rf *
cd -
mv _site/* $blog

cd $blog && git add -A && git commit -m "Commit a new blog" && git push


