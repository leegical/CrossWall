## 介绍

Qv2ray 是使用 Qt 编写的 v2ray 跨平台 GUI，支持MacOS、Windows和Linux，支持连接导入和编辑，中英文切换。 因为是 GUI 可以进行可视化操作，无需借助终端，上手难度比 Clash 低。

## 下载安装
下面方式选其一下载：
- [GitHub 官网](https://github.com/Qv2ray/Qv2ray/releases/download/v2.7.0/Qv2ray-v2.7.0-linux-x64.AppImage)
- [国内镜像](https://ghproxy.com/https://github.com/Qv2ray/Qv2ray/releases/download/v2.7.0/Qv2ray-v2.7.0-linux-x64.AppImage)
- [蓝奏云](https://hzyy.lanzoux.com/iUSv5089y0ah)

### 设置权限

右键下载后的文件，点击 **属性** —> **权限**，勾选 **允许执行文件**。

![](https://docs.mebi.me/assets/images/1-dbe697e6577227fbefc8562793262431.jpeg)

然后即可双击打开，打开后软件界面如下图所示。
如果无法直接打开，可能是因为没有安装`FUSE`
```
sudo apt install fuse -y
```

![](https://docs.mebi.me/assets/images/2-95ee99d60664ba5a37bbfe0107d88e94.png)

### 下载内核

Qv2ray 运行依赖 V2ray 内核，但是 Qv2ray 默认不包含 V2ray 内核（是不是听着很扯）。接下来你要根据自己的操作系统下载 V2ray 内核。

-   [V2ray 内核国内下载](https://github.com.cnpmjs.org/v2ray/v2ray-core/releases)或[蓝奏云](https://hzyy.lanzoux.com/ixAdE089zpqj)
    
    **判断哪个软件版本适合我？** 
    一般只要根据自己使用的几位操作系统下载：
    64 位操作系统 （现在一般都是这个） 选择下载 [**v2ray-linux-64.zip**](https://ghproxy.com/https://github.com/v2ray/v2ray-core/releases/download/v4.28.2/v2ray-linux-64.zip)；
    32 位操作系统 选择下载 [**v2ray-linux-32.zip**](https://ghproxy.com/https://github.com/v2ray/v2ray-core/releases/download/v4.28.2/v2ray-linux-32.zip)；
    如果你的处理器是 arm 构架，根据几位操作系统，下载对应文件。
    
    这里建议将下载的 .zip 压缩包放置在 Qv2ray 同目录下，然后解压。    

![](https://docs.mebi.me/assets/images/3-51aea95ebe93b55958dd37d0a2344bdc.jpeg)

### 加载内核

点击 Qv2ray 软件上方 **首选项**，位置下图所示：

![](https://docs.mebi.me/assets/images/4-2fae6e66c0143353c85a26177501cb64.jpeg)

点击 **内核设置**，这里需要填写两个地方：

-   **V2Ray 资源目录**：选择刚才解压出来的目录（文件夹）
-   **V2Ray 核心可执行文件路径**：选择刚才解压出来的目录下载 V2ray 文件。

这两者就差个 `/V2ray`

![](https://docs.mebi.me/assets/images/5-ec829887c5569d34c466edd73924908d.jpeg)

然后点击下面 **检查 V2Ray 核心设置** 按钮，当提示 **V2Ray 路径配置检查通过** 就表示内核加载成功，然后右下角 **OK**。

![](https://docs.mebi.me/assets/images/6-fd316d9b6e1fbbd8a117d5895113abd4.jpeg)


## 使用 Qv2ray

### 导入订阅

点击 Qv2ray 上方 **分组**
![](https://docs.mebi.me/assets/images/8-ec9b5ce1b9110a1abbc4149aac5f9289.jpeg)

1. 分组名称 修改为 `humua` 或者其他你喜欢的名字
2. 切换到 **订阅设置**，勾选 **此分组是一个订阅**
3. 订阅地址 输入QQ群公告里的 V2ray 订阅链接，然后点击下方的 **更新订阅** 按钮，右下角 **OK**。
![Qv2ray-subscribe.jpg](https://s2.loli.net/2022/11/03/mxD5uLN16WGkVlt.jpg)


打开 Qv2ray 软件，在左侧空白区域顶部出现 **hymua**，双击即可出现节点列表。
双击一个节点即可启用代理（不要选择 `fast`/`kcp`，Qv2ray 只支持 `tcp` 协议）。
![Qv2ray-node.jpg](https://s2.loli.net/2022/11/03/oLIsN8AxVR1Jjnc.jpg)

浏览器打开谷歌：google.com，没有问题的话就能正常打开，配置成功。
![](https://docs.mebi.me/assets/images/11-0ba0da31a95ce705b635ae80169b5826.jpeg)


### 查看本地代理端口
打开Qv2ray - 入站设置，左边是`sock5`，默认端口是`1089`；右边是`http`，默认端口是`8889`
在为`Git`等[设置本地代理](https://www.cnblogs.com/leebri/p/16810644.html)的时候注意选择对应的端口号哦~
![port.jpg](https://s2.loli.net/2022/11/03/cCl7FphAPYJ8GbE.jpg)

## （可选）配置自启动、固定连接

打开 Qv2ray - 首选项 - 常规设置，启用自启动，选择一个链接作为固定连接。
如下图，每次 Qv2ray 启动时就会自动连接`v6-tcp`
![fixed-link.jpg](https://s2.loli.net/2022/11/03/asVmAhyWDRCgf9w.jpg)

打开终端，输入`crontab -e`命令编辑定时任务。如果是第一次使用`crontab`，会让你选择默认的编辑器，新手建议选择nano
在定时任务中粘贴以下命令：
```
@reboot /usr/local/bin/Qv2ray-v2.7.0-linux-x64.AppImage >/dev/null 2>&1
```
>其中，`/usr/local/bin/`为 Qv2ray 执行文件所在的目录，记得改成你自己所在的目录

![crontab-e.jpg](https://s2.loli.net/2022/11/03/bS85A6NYa3hzWVs.jpg)

`Ctrl + x`离开，输入`y`，回车保存配置。以后每次Ubuntu启动都会打开 Qv2ray

## （可选）配置快捷键
打开Ubuntu系统设置 - 键盘快捷键 - 拉到最下面，点击`+`添加自定义快捷键
- 名称：随便填
- 命令：Qv2ray 执行文件所在的目录 + Qv2ray 执行文件名称，如`/usr/local/bin/Qv2ray-v2.7.0-linux-x64.AppImage`
- 快捷键：在键盘上按下你想设置的快捷键，图中是同时按下了`Alt`和`v`
如下图，以后就可以使用`Alt`和`v`呼出Qv2ray：
![kjj.jpg](https://s2.loli.net/2022/11/03/hpozGmrd3BiYgD5.jpg)

## 不使用时如何关闭？
Ubuntu桌面右上角找到 Qv2ray 的图标，右键单击。
- 断开连接：断开当前V2ray链接，但 Qv2ray 仍在后台运行
- 退出：断开全部连接并完全退出 Qv2ray 
![end.jpg](https://s2.loli.net/2022/11/03/XErYw1UqQkiv9F4.jpg)