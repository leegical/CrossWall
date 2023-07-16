> 准备清单
> 硬件：具备无线网卡的PC，且能正常使用WiFi；其他能无线上网的设备
> 软件：正确配置能翻出去的代理软件

## <span id="ready">〇、写在前面</span>
本教程里主要是通过热点实现局域网，因此获取本机的局域网IP有些麻烦。大多数网络是通过路由器/交换机组成局域网，如果你是这样的情况，就可以直接进入路由器后台界面，查看连接设备的局域网IP，并且可以跳过教程中的热点设置部分。

## 一、Windows端设置
### 1.1 代理软件设置
- 打开rayN，开启代理确认能翻出去。【设置】-【参数设置】，勾选**允许来自局域网的连接**
![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211051935143.png)

- 记录局域网`http`端口号。如下图，此时`http`端口号为`10811`
![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211051937142.png)

### 1.2 Windows防火墙设置
搜索防火墙，打开高级安全 Windows Defender 防火墙-入站规则-新建规则
![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211052032704.png)

- 规则类型：端口（O）
- 协议和端口：TCP、**特定本地端口**填代理软件的局域网`http`端口号`10811`
- 操作、配置文件：保持默认，直接点下一步即可
- 名称：随便填
- 最后点击**完成**结束新建规则
![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211052039738.png)

### 1.3 Windows热点设置(可根据[〇中内容](#ready)选择跳过)
- 打开终端（或者cmd），输入`ipconfig`命令查看当前存在的Windows IP 配置。如下图，我这里共有6个网络连接配置，其中第一个`以太网适配器 以太网`是真正有网络连接的，记住它
![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211051941715.png)

- Windows【设置】-【网络和Internet】-【移动热点】，打开移动热点。可以关闭**节能**，防止热点长时间未使用被自动关闭![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211052120859.png)


- 打开终端，再次输入`ipconfig`命令，可以看到`无线局域网适配器 本地连接* 10`有了连接，这就是刚刚打开的热点。记录这里的ipv4地址：`192.168.137.1`
![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211051946412.png)

- 打开`控制面板-网络和Internet-网络连接`
![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211051950577.png)

- 双击打开`以太网适配器 以太网`状态面板-属性-共享-勾选`允许其他网络用户`，家庭网络连接选择Windows热点对应的`本地连接* 10`
![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211052036922.png)

## 二、移动端设置
### 2.1 安卓端
1. 打开WiFi，输入密码连接Windows热点
2. 点击 →箭头 进入WiFi设置界面
	- 代理改为手动
	- 主机名改为热点对应的`无线局域网适配器 本地连接* 10`ipv4地址：`192.168.137.1`
	- 端口改成代理软件的局域网`http`端口号`10811`
	- ![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211052048062.png)

### 2.2 iOS端
1. 打开WiFi，输入密码连接Windows热点
2. 点击 ℹ️ 进入WiFi设置界面
	- 点击  HTTP代理 配置代理
	- ![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211052059804.png)
	- 选择**手动**，**服务器**填写热点对应的`本地连接* 10`ipv4地址：`192.168.137.1`；端口改成代理软件的局域网`http`端口号`10811`
	- 点击存储保存代理配置
	- ![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211052101304.png)

3. 打开[Google](https://www.google.com/)验证是否成功代理。如下图，通过热点共享代理成功
![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211052104630.png)

### 2.3 其他移动设备同理设置WiFi代理即可

## 移动端作为热点共享本机代理
### 一、代理端设置
#### 1.1 代理软件设置
以安卓端rayNG为例，在设置里勾选允许来自局域网的连接，记录HTTP代理端口为`10809`
	![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211052142548.png)

#### 1.2 代理机热点设置(可根据[〇中内容](#ready)选择跳过)
移动端开启热点后，首先也是需要获得热点的ipv4地址。为了叙述方便，称开启热点的机器为`代理机`，连接热点的机器为`连接机`。获取`代理机`的ipv4地址一般有两种方法
1. `连接机`连接`代理机`的热点后，在WiFi详情界面查看服务器地址。该地址就是`代理机`的ipv4地址
2. `代理机`如果是安卓手机，可以下载[MT管理器](https://www.coolapk.com/apk/bin.mt.plus)。点击左上角**≡**，打开终端模拟器。在开启热点前后，使用`ifconfig`命令查看多出来的ipv4地址。如下图，可以看到ipv4地址为`192.168.70.209`
	苹果设备可以尝试使用`iSH Shell`等类似软件。
![](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202211052145229.png)


### 二、连接端设置
同理，连接端连接热点后，在WiFi设置里打开代理，设置为手动，地址、端口分别填写为`192.168.70.209`和`10809`
