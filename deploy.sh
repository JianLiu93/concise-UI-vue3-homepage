#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 部署到自定义域域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'
git branch -M main

# 部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 部署到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:JianLiu93/concise-UI-vue3-homepage.git main:gh-pages

cd -