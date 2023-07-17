#!/bin/bash

# 定义函数
prompt_api_key() {
    while true; do
        read -p "请输入您的OpenAI API key（输入n或N退出）: " api_key
        if [[ "$api_key" =~ ^[nN]$ ]]; then
            echo "已退出脚本！"
            exit 0
        elif [[ "$api_key" =~ ^sk- && ${#api_key} -gt 20 ]]; then
            export API_KEY="$api_key"
            echo "已设置OpenAI API key为: $API_KEY"
            echo "将使用 $API_KEY 构建服务......"
            break
        else
            echo "输入的API key不合法，请重新输入: "
        fi
    done
}

# 调用函数
prompt_api_key

# 定义函数：为当前服务设置新的API key
set_api_key() {
    read -p "为当前服务设置新的API key（回车跳过设置）: " new_api_key
    if [[ "$new_api_key" =~ ^sk- && ${#new_api_key} -gt 20 ]]; then
        export API_KEY="$new_api_key"
        echo "已设置当前服务API key为: $API_KEY"
    elif [[ -z "$new_api_key" ]]; then
        echo "未设置新的API key，当前服务将继续使用: $API_KEY"
    else
        echo "API key不合法，当前服务将继续使用: $API_KEY"
    fi
}

isolate_set=0
# 主逻辑
read -p "是否为每个服务单独设置API key？（输入y或Y进入单独设置模式）: " isolate
if [[ "$isolate" =~ ^[yY]$ ]]; then
    isolate_set=1
else
    echo "[单一API模式]所有用户将使用全局API密钥: $API_KEY"
fi

# proj_dir=$(pwd)
docker rm -f chat-web
docker rm -f next-web
docker rm -f chat-acada

docker pull chenzhaoyu94/chatgpt-web
docker pull yidadaa/chatgpt-next-web
docker pull cxgup/chatgpt_academic

# 获取本机的ipv4地址
localip=$(hostname -I | awk '{print $1}')

# cd $proj_dir
# Get a list of all directories in the current directory
directories=$(find . -maxdepth 1 -type d)

# Loop through each directory and execute docker-compose up
for dir in $directories; do
    if [ "$dir" != "." ]; then
        cd $dir
        # 查找docker-compose.yml文件中的本机端口，并只保留第一行结果
        sublocalport=$(grep -Po '\d+:300\d' docker-compose.yml | grep -oE '[0-9]+' | head -n 1)
        # 获取当前文件夹的名称
        subdirname=$(basename "$(pwd)")
        echo "进入 $(pwd)，构建 $subdirname 服务......"
        if [[ "$isolate_set" -eq 1 ]]; then
            # 为当前服务设置单独的API
            set_api_key
        fi
        sed -i "s/API_KEY: .*/API_KEY: \"$API_KEY\"/g" docker-compose.yml
        docker-compose up -d
        # 打印服务信息
        echo "请访问 $localip:$sublocalport 来使用 $subdirname 服务"
        cd ..
    fi
done

echo y | docker image prune -a
