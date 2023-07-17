#!/bin/bash

proj_dir=$(pwd)
docker rm -f chat-web
docker rm -f next-web
docker rm -f chat-acada

docker pull chenzhaoyu94/chatgpt-web
docker pull yidadaa/chatgpt-next-web
docker pull cxgup/chatgpt_academic

cd $proj_dir/paper
rm -rf config.py
wget https://raw.githubusercontent.com/binary-husky/chatgpt_academic/master/config.py

# 把下面的换成你自己的API key
OPENAI_API_KEY=sk-fxXfxUOOKCxH5zCDvMAGT3BlxkFJ2rbuCu255JF9Z4pw3YIx

sed -i "s/^API_KEY = \".*\"/API_KEY = \"$OPENAI_API_KEY\"/g" config.py
sed -i 's/^WEB_PORT = .*/WEB_PORT = 3006/g' config.py
# 注意，如果你是未绑定信用卡的免费用户，那么不要执行下面这条命令
sed -i 's/DEFAULT_WORKER_NUM = 3/DEFAULT_WORKER_NUM = 1800/g' config.py

# 获取本机的ipv4地址
localip=$(hostname -I | awk '{print $1}')

cd $proj_dir
# Get a list of all directories in the current directory
directories=$(find . -maxdepth 1 -type d)

# Loop through each directory and execute docker-compose up
for dir in $directories; do
    if [ "$dir" != "." ]; then
        echo "Entering $dir"
        cd $dir
        docker-compose up -d
        # 查找docker-compose.yml文件中的本机端口，并只保留第一行结果
        sublocalport=$(grep -Po '\d+:300\d' docker-compose.yml | grep -oE '[0-9]+' | head -n 1)
        # 获取当前文件夹的名称
        subdirname=$(basename "$(pwd)")
        # 打印服务信息
        echo "请访问 $localip:$sublocalport 来使用 $subdirname 服务"
        cd ..
    fi
done

echo y | docker image prune -a
