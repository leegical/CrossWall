# 解锁ChatGPT

参考 [通过 warp 解锁 chatGPT 的方法](https://github.com/fscarmen/warp/blob/main/README.md#%E9%80%9A%E8%BF%87-warp-%E8%A7%A3%E9%94%81-chatgpt-%E7%9A%84%E6%96%B9%E6%B3%95)使用 CloudFlare Warp 代理 ChatGPT 拯救被 openai 封禁的 IP，理论上也可以解锁 Netflix 和 Disney+。

# 1.注册 warp
打开 [warp 注册网站](https://fscarmen.cloudflare.now.cc/)，点击 `Register Warp`，等待片刻直到如下图：
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307162045962.png)

# 2.编辑 json
复制这个 [json 文件](https://github.com/leegical/CrossWall/blob/main/build/x-ui/config.json)到本地 vscode 中，根据 [warp 注册网站](https://fscarmen.cloudflare.now.cc/)中的注册信息修改 json 文件中的以下三处：
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307162056294.png)

# 3.替换 x-ui 配置
进入 x-ui 面板管理界面——面板设置——xray 相关设置
将修改后的 json 全选复制，全部替换到 xray 配置。然后保存配置，重启面板。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307162104243.png)

之后，再连接你的代理访问 [ChatGPT](https://chat.openai.com/)，发现就可以正常连接了。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307162111763.png)

# 4.绕过其他网站封禁
如果有其他网站 ban 了服务器 IP，也可以使用此方法绕过封禁。
这里假设谷歌学术（ https://scholar.google.com/ ）禁止了访问，只需要在 json 文件此处添加谷歌学术域名。然后替换 x-ui 配置文件，保存、重启面板即可。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307162118468.png)
