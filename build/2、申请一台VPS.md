首先，我们需要至少1台非大陆地区的 VPS 服务器，我建议你选择国外 VPS，比如搬瓦工、Vultr、Linode 和 Hostwinds 等，其中，Vultr 和 Hostwinds 最适合在互联网环游世界。这里我们首选最知名的 Vultr VPS，主要是因为 Vultr 服务器配置好、运行稳定，性价比也是非常高，按小时计费，能够随时开通和删除服务器，而且新服务器就是新 IP，相当于免费更换 IP 地址（这也是最大的优点）。Vultr 提供了最广泛、稳定的全球大型数据中心的机房，无论你或者你的客户来自哪里，你都能轻松找到延迟低、可扩展的基础设施解决方案！[点击测试Vultr服务器在全球各地机房的网络速度](https://vultr.wiki/speed-test)

现在，Vultr 官网页面已经支持简体中文语言，对于中国大陆用户来说，母语更亲切，更加方便了。
# 1、注册 Vultr
## 1.1 Vultr 新用户注册优惠活动
vultr 目前有以下几个优惠活动，可以选择一个参与。
1. [**点击链接注册送100美元**](https://www.vultr.com/?ref=9498111-8H) 
新用户通过专属活动页面注册，并进入后台的【**Billing】**页面，然后至少充值35美元，可以获得赠送的100美元余额，能用来购买 Vultr 的任何产品。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152219507.png)

2. [点击链接注册]（https://www.vultr.com/?ref=8322054），你没优惠，但我应该能获得10美刀
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152222705.png)

**注意事项：**必须通过以上优惠活动专用链接，且使用支付宝（Alipay）或信用卡付款充值至少35美元，并保持活跃使用14天以上，才算有效参与活动；否则，有可能会被系统视为欺诈而无效。

由于 Vultr 这次活动优惠力度非常大，所以 Vultr 对新用户的审核比较严格，注册购买过程中，请不要挂代理，否则有可能会被判定为欺诈而失效。只要你是正规的新用户，账户充值成功后，Vultr 都会审核成功并在 24 小时内发放 $100 到你的账户余额，所以正规用户请放心撸吧！

如果以上 Vultr 活动失效时，仍然可以使用这些 Vultr 优惠码：**TGIF15** 可优惠15美元，**GIVEME10** 和 **WHTPROMO** 均可以优惠10美元，此 Vultr 优惠码跟 Vultr 优惠活动不可叠加使用。

当你注册并邮件激活账号，充值后即可购买服务器。
## 1.2 账户注册注意事项
（1）Vultr账户注册密码要求至少10位，而且必须至少包含1个大写字母、1个小写字母和1个数字。

（2）如果提示注册成功，系统会发送一封验证邮件到你的注册邮箱。这时候，你需要先登录注册邮箱查看邮件并点击 “Verify Your E-mail” 验证邮箱以激活Vultr账户。如果您的邮箱没有收到激活邮件，那么请首先查看是否被归档到垃圾箱，其次就是将Vultr官方验证发信邮箱“noreply@vultr.com”加入白名单，然后去Vultr后台重新发送激活邮件。

（3）Vultr 账户注册与登录时，可能需要输入比较难以识别的验证码；如果感觉识别不出来，就再次点击验证码图片刷新出新一组验证码，直至你能较准确的识别出
来。

## 1.3 [vultr 充值](https://my.vultr.com/billing/)
先充值，再购买服务器。服务器是按小时扣钱，所以你不必担心充值的钱一下子被扣完，用多长时间才会扣多少钱。
如果没有外币信用卡（Credit Card），可以使用支付宝充值。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152228203.png)

# 2. 购买 VPS
### Vultr VPS 套餐方案(Vultr Cloud Compute)

|**SSD 硬盘**|**CPU**|**内存**|**月流量**|**按小时计费**|**月付价格**|
|---|---|---|---|---|---|
|20G|1核|512M|500G|仅有IPv6地址，不推荐|2.5美元/月|
|20G|1核|512M|500G|大部分地区无此套餐|3.5美元/月|
|25GB|1核|1G|1T|$0.007/h|5美元/月|
|55GB|1核|2G|2T|$0.015/h|10美元/月|
|80GB|2核|4G|3T|$0.03/h|20美元/月|
|160GB|4核|8G|4T|$0.06/h|40美元/月|
|320GB|6核|16G|5T|$0.119/h|80美元/月|
|640GB|8核|32G|6T|$0.238/h|160美元/月|
|1280GB|16核|64G|1T|$0.476/h|320美元/月|

**注意事项：** 2.5美元/月的套餐只提供 ipv6，如果你用不了 ipv6，那么你可以买3.5美元的套餐。另外，并非所有地区都有3.5美元/月的套餐，需要自己去看。由于资源的短缺，有的地区有时候有3.5美元的套餐，有时候没有，现在大部分地区都没有2.5美元/月和3.5美元/月的套餐了。所以，个人推荐使用**5美元/月**的套餐，性价比非常高，用来建站、建机场等都是很好的。
## 2.1 部署服务器
进入[服务器部署界面](https://my.vultr.com/deploy/)
1. 服务器类型，选择**Cloud Compute**
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152240170.png)
2. CPU，选择最后一个**Intel Regular Performance**
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152243223.png)
3. 服务器所在地，建议选择亚洲的机房，例如日本（Japan）或者新加坡（Singapore）。这里选择的是**日本大阪（Osaka）**
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152245670.png)
4. 操作系统，一般选择 centos 或者 Ubuntu，点击操作系统可以选择具体版本。这里选择了**Ubuntu22.04 LTS x64**
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152247530.png)
5. 服务器套餐，这里选择了5美刀一个月的套餐，个人用足矣
这里以5美刀一个月的套餐为例，解释一下套餐收费
- 25GB SSD——硬盘空间为25G 的固态硬盘
- 1vCPU、1GB Memory——1核心 CPU+1GB 内存，有点拉胯，但是够用
- 1TB Bandwidth——每个月有1TB 的免费流量上限
> 这里说明一下 vultr 只对出站流量计费，不对入站流量收费。vultr 的流量分为两种：
> ① **账户免费流量**：vultr 每个月会给你2TB 的免费流量（没用完不会结余）。如果你服务器套餐里的流量用完了，vultr 会自动扣除你账户里的免费流量额度。如果2TB 的免费流量也扣完了，多余的流量才会产生费用。超额流量费用：0.01美刀/GB。
> ② **实例流量**：就是服务器套餐里的每个月1TB 是每小时分配的，每个月有 672 小时。也就是说，服务器每小时会增加（1024GB/672h≈1.52GB）流量上限。
	- 假设你服务器在运行的第一个小时就跑了10G 流量，超出了当前服务器流量上限。不用担心，再运行六个多小时，服务器流量上限就可以覆盖你的花销，不会扣你钱。
	- 但是，假设你跑了500GB 流量，服务器此时流量上限只有100GB，并且你销毁（destroy）了服务器，那么服务器流量上限不会再增加，因此超出的400GB 流量会从你的账户免费流量里扣除。
	- 注意，服务器流量是叠加的。如果你又开了一台新服务器，那么你的总流量上限=账户免费流量+各个服务器当前流量上限。只要你之前跑的流量(不管在哪台机器上)不超过这个总流量上限，就不会多扣你钱。
- $5/month、$0.007/hour——每月5美刀，每小时0.007美刀
> vultr 的计费规则为：对于每台服务器，每个小时收费0.007美刀。如果本月按小时收费已经达到了5美刀，那么剩余的小时就不会产生费用（上限5美刀）。
> 无论什么时候开的服务器，都是每台单独计费，并不会因为同一个套餐而叠加使用时间。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152250659.png)
6. 取消自动备份、启用 ipv6
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152324324.png)
7. SSH Keys（可以跳过此配置）。你可以将自己机器的 SSH Keys 添加到 vultr 中，这样使用 ssh 登录服务器时就不需要输密码了。[生成 SSH 公钥教程](https://git-scm.com/book/zh/v2/%E6%9C%8D%E5%8A%A1%E5%99%A8%E4%B8%8A%E7%9A%84-Git-%E7%94%9F%E6%88%90-SSH-%E5%85%AC%E9%92%A5)
8. 服务器名字和标签（可以跳过此配置）。字面意思，给你服务器起个特殊名字，归类到某一个标签中。
9. **部署**：查看最后金额是否为5美刀，如果多了，找一下是不是勾选了某些收费服务。没问题就点击**Deply Now**部署你的服务器。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152331853.png)
## 2.2 测试服务器 IP
由于使用 vultr 的用户比较多，所以你的服务器可能被别人用过，就要测试 IP 是否已经被墙了。
1. 进入[Products](https://my.vultr.com/)，等待服务器安装完毕（Status 变为绿色的 Running），查看服务器详情
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152339314.png)
2. 分别复制 ipv4和 ipv6地址，进行测试
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152343321.png)
在终端里分别 ping ipv4和 ipv6地址查看通不通（Windows 可以使用 cmd 进行测试）。多测试几次，像下图这样全部接收的就没问题，或者有一个两个丢包也行。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152349230.png)
**如果全部丢包了怎么办？** 不管是 ipv4还是 ipv6地址，只要有一个全部丢包，那就是 IP 被墙了，需要立刻换服务器。
但是注意，当你开新服务器的时候，vultr 会将你近期使用过的 IP 再次分配给你。因此，正确换服务器的步骤是：
①部署新服务器，获得新 IP，并测试。如果新 IP 不通，则继续开新服务器。
②若新 IP 好使，再回到 [Products](https://my.vultr.com/) ，将之前不好使的机器全部销毁。服务器在第一次部署的第1个小时只收0.01刀，所以只要能在1个小时内找到好使的 IP 并销毁不好使的服务器，花的钱是极少的。
![image.png](https://raw.githubusercontent.com/leegical/Blog_img/master/md_img202307152359783.png)
