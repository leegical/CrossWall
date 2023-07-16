## 1. ssh
进入服务器实例详情界面，获取服务器 IP 和 root 账户密码
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307160003064.png)
打开终端或 ssh 工具（如 [Xshell](https://www.xshell.com/zh/xshell-download/)、[MobaXterm](https://mobaxterm.mobatek.net/download.html/)），使用 ssh 登录服务器
> 用户名 root，假设服务器 IP 为`64.1.1.2`
- Linux 终端 ssh 登录命令
```bash
ssh root@64.1.1.2
# 输入yes接受密钥
# 密码输入的时候不会显示任务字符，直接粘贴密码后回车即可
```
- [XShell使用教程](https://www.cnblogs.com/soloversion/p/16100590.html)
- [MobaXterm使用教程](https://zhuanlan.zhihu.com/p/61013117)

## 2. 安装 [x-ui](https://github.com/vaxilu/x-ui)
### X-UI 安装&升级
ssh 登录到远程服务器后，在终端中使用下方命令一键安装。
> 如果提示未安装 curl 工具，请先[安装 curl 工具](https://www.linuxrumen.com/cyml/1778.html)
```bash
bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
```

安装过程中，会提示你修改 x-ui 的账号、密码、端口。这里假设将端口修改为`8377`
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307160025942.png)

在终端中输入以下命令，让防火墙放行 x-ui 端口（刚刚设置的8377端口）。**==重要！==**
```bash
ufw allow 8377
ufw reload
```
### 访问X-UI 面板
在浏览器中输入 **IP:端口** 进行访问。
这里就是**64.1.1.2:8377**，就会得到图示中的界面。随后输入设置的账号（admin）、密码（admin123456）进行访问。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307160032570.png)

以上，基础的面板部署就已经完成。你也可以成功的访问进入面板了。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307160028373.png)

## 3、X-UI 基础设置
### 切换 xray 内核版本
x-ui 默认的内核是1.4.x，比较低，你可以像我一样切换成高一点的版本，如1.7.5
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307160033491.png)

### 添加入站
x-ui 面板支持这些协议：vmess、vless、trojan、shadowsocks、dokodemo-door、socks、http。所以我们可以按照自己的喜好和需求继续部署。这里就演示一个最基础的 vmess tcp的配置。

备注随便写，protocol 选择 vmess ；其他一切默认即可。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307160038981.png)
当然你也可以设置 “到期时间” 或者是 “总流量” 的限制。

你也可以选择将传输协议改为 kcp（其他保持默认），理论上连接速度会快一点。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307160043546.png)

**==重要！==**这里配置的端口，需要在 SSH 里打开。例如这里的端口（54232）就需要执行下方命令：
```
ufw allow 54232
ufw reload
```

## 4. 导入代理
**V2ray 各平台客户端免翻墙下载及使用教程**：

|平台|软件名称|下载地址|配置教程|
|---|---|---|---|
|Windows| [V2rayN](https://github.com/2dust/v2rayN) | [最新版下载](https://github.com/2dust/v2rayN/releases/latest/download/v2rayN-With-Core.zip) | [V2rayN使用教程](https://github.com/leegical/CrossWall/blob/main/APP/v2rayN.md) |
|安卓| [V2rayNG](https://github.com/2dust/v2rayNG) | [v2rayNG-v1.8.5.apk](https://ghproxy.com/https://github.com/2dust/v2rayNG/releases/download/1.8.5/v2rayNG_1.8.5.apk)  | [V2rayNG使用教程](https://github.com/leegical/CrossWall/blob/main/APP/v2rayNG.md) |
|Linux(Ubuntu)| [Qv2ray](https://github.com/Qv2ray/Qv2ray) | [Qv2ray-v2.7.0.AppImage](https://ghproxy.com/https://github.com/Qv2ray/Qv2ray/releases/download/v2.7.0/Qv2ray-v2.7.0-linux-x64.AppImage)  | [Qv2ray使用教程](https://github.com/leegical/CrossWall/blob/main/APP/Qv2ray.md) |
|macOS| [ClashX](https://github.com/yichengchen/clashX) | [ClashX-v1.116.3.dmg](https://ghproxy.com/https://github.com/yichengchen/clashX/releases/download/1.116.3/ClashX.dmg)  |[ClashX配置教程参考](https://itlanyan.com/go.php?key=v2ray-clashx-config)|
|iOS| Shadowrocket | 外区苹果商店账号，付费下载  |手动或剪贴板导入，订阅链接导入可能无效|

