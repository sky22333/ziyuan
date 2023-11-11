
 - <img src="https://media0.giphy.com/media/pylpD8AoQCf3CQ1oO2/giphy.gif" width=30 height=30>  欢迎来到我的主页<br>
#
- 🖥 这是我用于记录各种信息的博客。                                         
- 😄  正在寻找各种好玩的编程项目。                
- 💬  发现好玩的项目请推荐给我哦。                  
- ❤   点击下方按钮联系我的Telegram。      
  
-  [![Telegram](https://img.shields.io/badge/-Telegram-red?color=white&logo=telegram&logoColor=black)](https://t.me/az667755)


<details>
  <summary>VPS常用命令</summary>
	最新XUI一键脚本：

```bash <(curl -Ls https://raw.githubusercontent.com/FranzKafkaYu/x-ui/master/install.sh)```

###  VPS开启root登录并且修改密码：

一键脚本

```wget -N --no-check-certificate https://github.com/taotao1058/rootvps/raw/main/rootvps && bash rootvps```


###  一键测试路由回程：

```wget -qO- git.io/besttrace | bash```


###  一键测试流媒体解锁：

```bash <(curl -L -s check.unlock.media)```

 
```bash <(curl -L -s check.unlock.media) -M 4```   # 只检测IPv4结果

 
```bash <(curl -L -s check.unlock.media) -M 6```   # 只检测IPv6结果

###  查看端口占用：

```lsof -i:端口号```

###  放行端口：

```sudo ufw allow 端口号```

```sudo ufw allow 端口号/协议```

```sudo ufw allow 起始端口:结束端口/协议```

```sudo ufw enable```   #  重启ufw防火墙

###  关闭端口：
```sudo ufw deny 端口号```

###  只允许指定IP连接22端口：
```sudo ufw allow from 192.168.1.100 to any port 22```      #  多IP用英文的逗号分开

###  文件类型转换：

```mv config.txt config.json```

```mv shell.txt shell.sh```

###  安装依赖：
 Debian/Ubuntu 命令：
 

```apt update -y``` 

```apt install curl wget git zip tar -y```



```apt-get install -y wget && apt-get install sudo```


 CentOS 命令：

```yum update -y``` 

```yum install curl wget git zip tar -y``` 

###  防火墙

```firewall-cmd --state```                             # 查看防火墙状态    


```systemctl stop firewalld.service```                 # 停止防火墙    


```systemctl disable firewalld.service```              # 禁止防火墙开机自启

###  一键开启bbr加速

```wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh```

```sysctl net.ipv4.tcp_congestion_control```          # 检查是否开启



###  查看系统内核 

```dpkg --print-architecture```


```uname -a```


###  科技lion的VPS工具箱


```curl -sS -O https://raw.githubusercontent.com/kejilion/sh/main/kejilion.sh && chmod +x kejilion.sh && ./kejilion.sh```


###  人型自走bot乌班图脚本


```wget https://raw.githubusercontent.com/TeamPGM/PagerMaid-Pyro/development/utils/install.sh -O install.sh && chmod +x install.sh && bash install.sh```


使用该脚本会将 ```Pagermaid-Pyro``` 安装至 ```/var/lib/pagermaid``` 目录下。


###  Hiddify面板(仅适用于乌班图系统)

```sudo apt update&&sudo apt install -y curl&& sudo bash -c "$(curl -Lfo- https://raw.githubusercontent.com/hiddify/hiddify-config/main/common/download_install.sh)"```


###  查看电脑wifi密码CMD命令

```netsh wlan show profile```


```netsh wlan export profile folder=C:\ key=clear```


</details>
