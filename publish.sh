#!/bin/bash

## remove remark specific markdown (slides separator, comments, slides information and todo comments)
sed '/--/d' index.md |  sed '/template:/d' |sed '/class:/d' |sed '/name:/d' | sed '/???/d' | sed '/_todo_/d' | sed -e 's/^\*//' > readme.md

## build 
#pandoc  -c flatly.css  -o index.html index.md

## build 
pandoc -o initiation-a-drupal.pdf readme.md

## push to github pages
git checkout gh-pages
git merge master
git push origin gh-pages
