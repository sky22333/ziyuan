
 - <img src="https://media0.giphy.com/media/pylpD8AoQCf3CQ1oO2/giphy.gif" width=30 height=30>  欢迎来到我的页面<br>
#
- 🖥 这是我用于记录各种信息的页面。
                               
####  点击三角图标可展开内容

---

<details>
  <summary>VPS常用命令</summary>
	
	
 ### 3xui[^1]

```
bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
```

[项目地址](https://github.com/MHSanaei/3x-ui)

###  一键wrap

```
wget -N https://gitlab.com/fscarmen/warp/-/raw/main/menu.sh && bash menu.sh [option] [lisence/url/token]
```

```
warp [option] [lisence]
```

###  一键安装docker

```
curl -fsSL https://get.docker.com | sh
```

###  查看系统内核
```
dpkg --print-architecture
```


```
uname -a
```

####  查看系统版本

```
lsb_release -a
```

###  VPS开启root登录并且修改密码：

一键脚本

```
wget -N --no-check-certificate https://github.com/taotao1058/rootvps/raw/main/rootvps && bash rootvps
```

###  安装依赖：
 Debian/Ubuntu 命令：
 

```
apt update
``` 

```
apt install curl wget git zip tar iptables lsof sudo -y
```


 CentOS 命令：

```
yum update -y
``` 

```
yum install curl wget git zip tar iptables lsof sudo -y
``` 

###  一键测试路由回程：

```
wget -qO- git.io/besttrace | bash
```


###  一键测试流媒体解锁：

```
bash <(curl -L -s check.unlock.media)
```

 
```
bash <(curl -L -s check.unlock.media) -M 4
```

 
```
bash <(curl -L -s check.unlock.media) -M 6
```

###  查看端口占用：
```
sudo lsof -i -P -n
```
```
ss -tuln
```
```
lsof -i:端口号
```
#### 释放端口
```
kill PID数字
```

###  放行端口：

```sudo ufw allow 端口号```

```sudo ufw allow 起始端口:结束端口```

```sudo ufw enable```   #  重启ufw防火墙

###  关闭端口：
```sudo ufw deny 端口号```

###  只允许指定IP连接22端口：
```sudo ufw allow from 192.168.1.100 to any port 22```      #  多IP用英文的逗号分开

###  文件类型转换：

```mv config.txt config.json```

```mv shell.txt shell.sh```


###  开启虚拟内存：

```
sudo fallocate -l 1G /swapfile && sudo chmod 700 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```


###  防火墙

```firewall-cmd --state```                             # 查看防火墙状态    


```systemctl stop firewalld.service```                 # 停止防火墙    


```systemctl disable firewalld.service```              # 禁止防火墙开机自启

###  一键开启bbr加速

```
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
```

```
sysctl net.ipv4.tcp_congestion_control
```





###  科技lion的VPS工具箱


```
curl -sS -O https://raw.githubusercontent.com/kejilion/sh/main/kejilion.sh && chmod +x kejilion.sh && ./kejilion.sh
```


###  人型自走bot乌班图脚本


```
wget https://raw.githubusercontent.com/TeamPGM/PagerMaid-Pyro/development/utils/install.sh -O install.sh && chmod +x install.sh && bash install.sh
```


使用该脚本会将 ```Pagermaid-Pyro``` 安装至 ```/var/lib/pagermaid``` 目录下。


###  Hiddify面板(仅适用于乌班图系统)

```
sudo apt update&&sudo apt install -y curl&& sudo bash -c "$(curl -Lfo- https://raw.githubusercontent.com/hiddify/hiddify-config/main/common/download_install.sh)"
```


###  查看电脑wifi密码CMD命令

查看已连接过的wifi：

```
netsh wlan show profile
```

查看密码：

```
netsh wlan show profile name="WiFi名称" key=clear
```

打印到C盘：

```
netsh wlan export profile folder=C:\ key=clear
```


</details>

---




<details>
  <summary>无人直播推流脚本</summary>


### 利用GPT写的无人直播FFmpeg推流脚本


#### [点击这里查看](https://github.com/taotao1058/zhibo?tab=readme-ov-file#%E5%BE%AA%E7%8E%AF%E6%8E%A8%E6%B5%81%E6%97%A0%E4%BA%BA%E7%9B%B4%E6%92%AD)

</details>

---




<details>
  <summary>代理工具SSH工具下载</summary>

  
  
  | 类型 | 名称 | 下载地址[^5] |
| :--- | :----: | :---: |
| 安卓  | v2rayNG  |https://github.com/2dust/v2rayNG/releases|
| 安卓  | clash  |https://github.com/Z-Siqi/Clash-for-Windows_Chinese/releases|
| Windows  | clash  |https://github.com/Z-Siqi/Clash-for-Windows_Chinese/releases|
| Windows  | v2rayN  |https://github.com/2dust/v2rayN/releases|
| ios  | 小火箭  |https://apps.apple.com/us/app/shadowrocket/id932747118|
| mac  | v2rayU  |https://github.com/yanue/V2rayU/releases|
| 安卓SSH  | Termius汉化  |https://github.com/alongw/Termius-zh_CN/releases|
| 安卓SSH  | termux |https://github.com/termux/termux-app/releases|
| 安卓SSH  | serverbox  |https://github.com/lollipopkit/flutter_server_box/releases|
| 电脑SSH  | tabby  |https://github.com/Eugeny/tabby/releases|
| 电脑SSH  | WindTerm  |https://github.com/kingToolbox/WindTerm/releases|
| 电脑SSH  | FinalShell  |https://www.hostbuf.com/t/988.html|
| ios SSH  | ServerBox  |https://apps.apple.com/us/app/serverbox-status-tools/id1586449703|
| ios SSH  | Termius |https://apps.apple.com/us/app/termius-terminal-ssh-client/id549039908|

</details>

---

<details>
  <summary>网站收藏or服务器</summary>
    
| 类型 | 名称 | 地址[^6] |
| :--- | :----: | :---: |
| 服务器  | vmiss  |https://app.vmiss.com/aff.php?aff=931|
| 服务器  | 艾云住宅  |https://iaclouds.com/cart.php|
| SK5代理  | kookeey  |https://kookeey.com|
| SK5代理 | ip2world  |https://www.ip2world.com|
| 服务器  | evoxt住宅  |https://evoxt.com/pricing|
| 服务器 | vultr  |https://www.vultr.com/?ref=9550943|
| 服务器  | 美国无线流量  |https://my.frantech.ca/cart.php|
| 服务器  | 越南家宽  |https://my.cloudfly.vn/cloud/server|
| 服务器  | gigsgigs  |https://clientarea.gigsgigscloud.com|
| 服务器  | 朝暮云 地区多  |https://zhaomu.com|
| 服务器  | CC一刀机  |https://cloudcone.com|
| 服务器  | RN二刀机  |https://my.racknerd.com/aff.php?aff=9465|
| 服务器  | 野草云建站机  |https://www.yecaoyun.com|
| 服务器  | 便宜建站机  |https://www.anclouds.com|
| 服务器  | hostvds一刀机  |https://hostvds.com|
| 涩涩  | 网站合集  |https://theporndude.com/zh|
| 涩涩  | AI画图  |https://pornpen.ai|
| 素材  | 图标素材  |https://aigei.com|
| 礼品卡  | Pockyt Shop |https://shop.pockyt.io/pc/brands/all|
| 网络测试  | ipv6测试  |https://test-ipv6.com|
| 渗透  | dns和端口扫描  |https://search.censys.io|

</details>

---

 [^1]: VPS常用命令

 [^2]: 国内VPS使用代理

 [^3]: 无人直播推流脚本

 [^4]:  xui配置二级代理

 [^5]:  代理工具SSH工具下载

 [^6]: 网站收藏or服务器
