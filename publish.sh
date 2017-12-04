#!/usr/bin/env bash
mkdir -p public
git pull && cd public && git pull && cd .. || exit 1
pwd
hugo
cp CNAME public/
cd public
git add .
git commit -m "Updating HTML"
git push
cd ..
git add .
git commit -m "Updating Source"
git push
