#!/bin/bash

# 注意，本脚本只在Ubuntu22.04LTS上测试通过
apt update && apt upgrade -y
# 添加使用 HTTPS 传输的软件包以及 CA 证书
apt install apt-transport-https ca-certificates curl software-properties-common gnupg lsb-release -y
# 添加软件源的GPG密钥
curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# 向 sources.list 中添加 Docker 软件源
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# 更新 Ubuntu 源列表
apt update
apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
apt install docker-compose -y

# 验证 Docker Compose 是否已成功安装
docker-compose --version