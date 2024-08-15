#!/bin/bash
# https://github.com/f123ly/serv00

mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.profile
source ~/.profile
npm install -g pm2
source ~/.profile
echo "pm2 已安装完成，断开 SSH 连接后重连生效。"
echo "注意不要删除或覆盖 ~/.profile 配置文件"
echo "形如 npm error config prefix cannot be changed from project config 的日志不会影响 pm2 的使用，请无需在意。"
