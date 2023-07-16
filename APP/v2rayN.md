v2rayN 是 Windows 系统下的代理软件客户端，功能强大且支持多种代理协议，如 VMess、VLESS、Trojan、Socks、Shadowsocks 等代理协议。

# 一、下载
1. [v2rayN 官网发布地址](https://github.com/2dust/v2rayN/releases) ：新手使用建议下载稳定版本，即版本号后标记为 `Latest` 的版本。
2. [**v2rayN 最新版镜像下载**](https://github.com/2dust/v2rayN/releases/latest/download/v2rayN-With-Core.zip)
# 二、安装教程
1. 解压
下载完成后，找到合适的目录，推荐安装在非系统盘，解压压缩包。
解压后的目录如下图所示。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161822150.png)

【注意】这里可以停留一下，选择发送快捷方式到桌面，方便以后使用
![](https://s2.loli.net/2022/08/09/7tPzIyoXiJDnUuL.jpg)
2. 右键 v2rayN.exe ，以管理员打开应用
3. 在任务栏中找到蓝色 V 图标，双击打开客户端界面
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161854267.png)
  
# 三、导入方式
## 3.1 订阅
### 添加订阅
在 v2rayN 客户端中打开订阅分组设置——添加
- 别名：随便填
- 可选地址：填入订阅链接
![fe78827092c97b669b03d0f143d2abee.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161858802.png)

### 更新订阅
回到 v2rayN 主页面，订阅分组——更新订阅（不通过代理）。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161900701.png)

稍等片刻，信息提示更新订阅结束。
鼠标选中其中一个链接，`回车`，或者`右键——设为活动服务器`，即可启用代理。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161904551.png)

## 3.2 剪贴板
浏览器中打开订阅链接网址，全选，复制
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161909106.png)

打开 v2rayN 主页面，直接使用`Ctrl+V`快捷键粘贴，或者`服务器——从剪贴板导入批量URL`
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161910379.png)

# 四、客户端设置
## 4.1 主界面
- 启用 Tun 模式（可选，这个设置后理论上其他非浏览器的应用也会走代理）
- 系统代理——自动配置系统代理
- 路由——全局（也可以选择绕过大陆，但是这样访问国内的网站就不会走代理）
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161919490.png)
## 4.2 参数设置
其他的设置按照个人意愿设置，需要注意的就一个 `Tun 模式设置`。
在主界面`启用 Tun 模式`后会蹦出来一个控制台窗口，在设置——参数设置——`Tun 模式设置`中取消勾选`显示控制台`，以后就不会蹦出来了。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161924371.png)
## 4.3 路由设置
设置——路由设置
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161927674.png)
双击你在主界面设置的路由规则，这里是`全局`
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161928302.png)

添加规则
- outboundTag：direct
> 说明一下：
> `block`：所有匹配的域名和 IP 将被**阻止访问**，可以用来屏蔽广告域名
> `proxy`：所有匹配的域名和 IP 将`走代理访问`，可以用来强制走代理访问某个域名/IP
> `direct`：所有匹配的域名和 IP 将`直接连接`，这样访问某个域名/IP 时不会走代理，你开 VPN 也能进入学校校园网了
- port：0-65535
- Domain：填你想要直连的域名的关键词。按照下图设置，以后访问包含`neu`、`xuexi`关键词的域名都不会走代理
- IP：同理，填你想要直连的 IP，可以带网段
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161931790.png)

将你刚才新增的规则上移至顶，这样规则才会生效。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161938362.png)

# 五、更新
更新客户端除了重新下载、解压、配置代理外，也可以直接在应用内更新。
建议每隔一段时间就`检查更新`——分别点击 `v2rayN`、`Xray Core` 更新客户端和内核
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161914986.png)


访问 www.google.com/ncr ，测试浏览器是否代理成功

# 六、让 UWP 和 Windows 更新也走代理
用管理员打开 cmd，输入以下命令：
```cmd

FOR /F "tokens=11 delims=\" %p IN ('REG QUERY "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Mappings"') DO CheckNetIsolation.exe LoopbackExempt -a -p=%p

```

![](https://s2.loli.net/2022/08/26/ljfTZYoBc86Knmx.jpg)

# 七、配合校园网 ipv6使用
## 7.1 设置纯 ipv6的代理
进入 [vultr](https://my.vultr.com/) 的服务器详情界面，复制服务器的 ipv6地址
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161950530.png)

打开 v2rayN 主界面，选择一个 ipv4 tcp 或 kcp 的代理，使用快捷键`Ctrl+V`和`Ctrl+V`快速复制代理，或者鼠标右键——克隆所选服务器
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161952383.png)

双击克隆的代理，进入编辑界面，将 ipv4地址改为 ipv6地址
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161957647.png)

点击改成 ipv6地址的代理，回车启用。这样你到服务器之间就只走 ipv6流量了，校园网不会扣费。

## 7.2 检查电脑是否有 ipv6
 无论是使用 WiFi 还是网线连接校园网的，在登陆校园网账号前检查 ipv6是否有连接。如果有连接，那么就不用登陆校园网。否则，就需要登陆校园网才能进行下面的步骤。

 打开 Windows 搜索，搜索“网络连接”：

![](https://s2.loli.net/2022/08/09/atUH29CxYrhuEAv.jpg)

找到连接校园网的网络，双击它：

![](https://s2.loli.net/2022/08/09/Ae5aMHIyzuWL6qV.jpg)

查看 ipv6连接状态：

![](https://s2.loli.net/2022/08/09/K3rA1eqBNDx4W6R.jpg)

一般来说啊，WiFi 是需要登陆校园网账户的，而网线不需要登陆，插上去就有 ipv6连接。

【记住】如果 ipv6有连接，那么就不用登陆校园网账户。否则，就需要登陆校园网才能进行下面的步骤。  

# 八、tips

- 1）最好是依次右键退出代理软件，然后再关机。如果没有退出软件就关机，等下次开机后，就有可能连不上网。**【解决办法】：打开 v2rayN，然后再退出。**

- 2）更新。由于不可抗力，代理链接有时会失效。启用新链接后，会在群里通知大家。