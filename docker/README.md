# 使用docker搭建各种ChatGPT网站
## 前言
本节将使用docker搭建各种ChatGPT网站，这些网站的源仓库分别为：
- [chatgpt-web](https://github.com/Chanzhaoyu/chatgpt-web)
- [ChatGPT-Next-Web](https://github.com/Yidadaa/ChatGPT-Next-Web)
- [GPT 学术优化](https://github.com/binary-husky/gpt_academic)

## 准备工作
以Ubuntu22.04 LTS为例
1. 确保服务器有docker环境。如果没有，则在当前文件夹中启动终端，执行以下命令安装：
```shell
sudo bash -c bash
chmod +x install-docker.sh
./install-docker.sh
```

2. 防火墙放行端口
```shell
sudo ufw allow 3000:3005/tcp
suod ufw allow 3000:3005/udp
sduo ufw reload
```

3. 准备好你自己的[OpenAI API Key](https://platform.openai.com/account/api-keys)，运行一键安装脚本`build.sh`时会提示你输入

## 部署
在当前文件夹中开启终端，执行以下命令，一键安装这三个项目的docker
> 脚本执行过程中，会提示你输入自己的OpenAI API Key
```shell
sudo bash -c bash
chmod +x build.sh
./build.sh
```

脚本执行后，会在终端里输出访问docker服务的IP+端口