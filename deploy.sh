
jekyll build --incremental
cp -r ./_site/* ../AngleNet.github.io/
cd ../AngleNet.github.io
git add -A
git commit -m "Commit new blog"
git push
