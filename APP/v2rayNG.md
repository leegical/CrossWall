**v2rayNG** 是安卓平台上一款基于 v2ray 核心的简洁、功能强大的客户端。本文通过图文详细介绍其安装和配置过程，希望对在安卓手机上使用 v2rayNG 进行科学上网的网友有帮助。

阅读本教程的前提：
1. 已配置好服务端链接
2. 下载 v2rayNG，未下载的请到这个页面下载：[V2Ray安卓客户端官方发布页面下载](https://github.com/2dust/v2rayNG/releases/)或直接下载 [v2rayNG_1.8.5.apk](https://github.com/2dust/v2rayNG/releases/download/1.8.5/v2rayNG_1.8.5.apk)
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161735262.png)

# 一、进入软件
1. 安装下载的 v2rayNG apk 文件；
2. 打开软件，进入主界面（即配置文件界面）
3. 点右上方的“+”，可以看到 V2rayNG 支持从二维码、剪切板导入，也可以手动配置 vmess、ss 等，还支持订阅（在自定义配置中）
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161740596.png)


# 二、导入方式
## 2.1 订阅
打开v2rayNG——左上角三条横杠——订阅设置——右上角+号——备注随便填，地址（url）填订阅链接——点右上角对号返回APP主页——右上角三个点——更新订阅
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161753192.png)
## 2.2 扫描二维码
进入 x-ui 界面，入站列表——选择1个入站——操作——二维码
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161800517.png)
打开 v2rayNG，+号——扫描二维码。给予相机权限，扫描 x-ui 的二维码，即可自动添加代理。
## 2.3 从剪贴板导入
进入 x-ui 界面，入站列表——选择1个入站——操作——二维码——复制
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161806921.png)
把复制的链接发到手机上，手机再复制一下
打开 v2rayNG，+号——从剪贴板导入。给予剪贴板权限，即可自动添加代理。

# 三、设置全局代理
（按需启用，这里是为了更好地白嫖 ipv6流量）
- 分应用代理，不勾选
- 预定义规则——全局。设置如下图：
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161810720.png)

# 四、使用
连接校园网WiFi，登陆账号，确保现在能联网。
打开v2rayNG APP，点击一个v6的连接，然后点右下角的“V”logo，即可连接成功。
![](https://s2.loli.net/2022/09/13/pHc8jlAtva1P4kL.jpg)
访问www.google.com/ncr 测试是否翻出去了。

# 五、ipv6
**先停止代理连接**

进入 [vultr](https://my.vultr.com/) 的服务器详情界面，复制服务器的 ipv6地址
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307161950530.png)

打开 v2rayNG 主界面，选择一个 ipv4 `tcp` 或 `kcp` 的代理，使用剪贴板分享、导入的方法克隆一份。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307162004779.png)

选择克隆后的代理，编辑，将 ipv4地址改为 ipv6地址。
测试一下是否可以成功连接。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307162009445.png)

启用 ipv6连接。这样你到服务器之间就只走 ipv6流量了，校园网不会扣费。

# 六、更新
由于不可抗力，代理链接有时会失效，但是订阅链接一般不会。
启用新代理后，会在群里通知大家。手机端只需要在 v2rayNG APP 中点击右上角三个点——更新订阅，即可更新代理。
