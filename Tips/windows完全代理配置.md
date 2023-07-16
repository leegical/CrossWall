windows完全代理配置(包括UWP，应用商店，系统更新)

## 基本浏览器代理
首先基本的浏览器代理设置，照常使用v2rayN即可。建议在设置里启用局域网连接，特殊操作后可以通过热点共享代理。

![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211021619121.png)


## 引用环境变量的程序
对于wget curl及其他会自动引用环境变量的程序，可以通过：
win+R -> cmd -> `setx http_proxy http://127.0.0.1:[端口号]` -> `setx https_proxy http://127.0.0.1:[端口号]`

>例如： setx http_proxy http://127.0.0.1:10808

此外，wget亦可通过如 "wget --config='./wgetrc' [url]"的方式指定配置文件以设置代理，wgetrc文件内容可如下：
```
https_proxy = http://127.0.0.1:[端口号]/
http_proxy = http://127.0.0.1:[端口号]/
ftp_proxy = http://127.0.0.1:[端口号]/
use_proxy = on
```

## UWP
对于UWP应用程序，可以通过 win+R -> cmd(管理员)，输入以下代码：
```
FOR /F "tokens=11 delims=\" %p IN ('REG QUERY "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Mappings"') DO CheckNetIsolation.exe LoopbackExempt -a -p=%p
```

也可以下载安装 Fiddler -> 运行 -> WinConfig -> Exempt All -> Save Changes

前提是你已经完成了基本的代理设置


## 应用商店更新、系统更新
对于应用商店更新，系统更新，可以通过：

win+R -> cmd(管理员) -> netsh winhttp import proxy source=ie

前提是你已经完成了基本的代理设置，即IE配置，因为这条命令是以IE为源进行导入


## 手动设置应用代理
对于其他不自动引用的软件，需要因软件而异人为设置代理，例如：

Jetbrains系：File -> Settings -> Appearance & Behavior -> System Settings -> HTTP Proxy

Anaconda："C:\Users\[你的用户目录]" -> 编辑".condarc"添加如下：
```
proxy_servers:
  http: http://127.0.0.1:[端口号]
  https: http://127.0.0.1:[端口号]
```

git: "C:\Users\[你的用户目录]" -> 编辑".gitconfig"添加如下:
```
[http]
    proxy = http://127.0.0.1:[端口号]
[https]
    proxy = http://127.0.0.1:[端口号]
```


## 所有应用走代理
### proxifier
v2rayN + proxifier 的组合在Windows10上可以使所有第三方应用走代理，打游戏延迟也比较低。但是在Windows11上会使得浏览器闪退。
### Netch
对于游戏使用代理加速，可以通过：https://github.com/NetchX/Netch
参考[Netch安装使用](Netch安装使用.md)，Netch也可以用于全应用走代理，缺点是只有`socks5`代理。

至于ping命令，由于它是直连的，虽然工作于应用层，但使用网络层的ICMP协议，而非传输层的TCP/UDP协议，而代理往往基于TCP/UDP协议，因此不能设置ping的代理。