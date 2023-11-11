
 - <img src="https://media0.giphy.com/media/pylpD8AoQCf3CQ1oO2/giphy.gif" width=30 height=30>  欢迎来到我的主页<br>
#
- 🖥 这是我用于记录各种信息的博客。                                         
- 😄  正在寻找各种好玩的编程项目。                
- 💬  发现好玩的项目请推荐给我哦。                  
- ❤   点击下方按钮联系我的Telegram。      
  
-  [![Telegram](https://img.shields.io/badge/-Telegram-red?color=white&logo=telegram&logoColor=black)](https://t.me/az667755)

####  ***提示：点击三角图标展开内容***
---
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

---

<details>
  <summary>国内VPS使用代理教程</summary>
  #  国内VPS使用代理的方法，适用于无法拉取github项目

###  方法一：

首先你需要有一个可以直连的代理，建议用外国服务器安装xui面板自建

直接开启SK5代理：```export all_proxy="socks5://用户名:密码@地址:端口"```

或者开启http代理：```export all_proxy="http://用户名:密码@地址:端口"```

此时输入```curl ip.sb```查看本机IP判断是否配置成功


###  方法二：
安装shadowsocks-libev：

```sudo apt install shadowsocks-libev```  &nbsp;&nbsp;&nbsp;&nbsp;  #  Debian/Ubuntu

```sudo yum install shadowsocks-libev```  &nbsp;&nbsp;&nbsp;&nbsp;  #  CentOS


创建一个名为```config.json```的文件配置SS节点的相关信息，建议使用aes-256-gcm或aes-128-gcm等加密算法，将以下配置添加到文件中：
```
{
  "server": "节点地址",
  "server_port": 端口,
  "local_port": 1080,
  "password": "密码",
  "method": "加密算法"
}
```


使用以下命令启动shadowsocks-libev客户端：

```ss-local -c 节点文件路径 > /dev/null 2>&1 &```

然后就可以开启代理了：

```export all_proxy="socks5://127.0.0.1:1080"```



此时输入```curl ip.sb```查看本机IP判断是否配置成功

关闭终端重新连接后会自动关闭代理，重新开启SK5代理即可


也可以只用代理下载文件：

```curl --socks5 127.0.0.1:1080 http://www.example.com```


#  PS

文件格式转换命令```mv config.txt config.json```

你也可以通过编辑```/etc/shadowsocks-libev/config.json```文件来配置SS服务端:

就是把这台服务器当节点用，需要把第一行```server```配置改为```"server":"0.0.0.0",``` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#  允许所有IP连接

配置完成后需重启 ```sudo systemctl restart shadowsocks-libev```

为什么用SS呢？因为apt yum pip包管理器里都内置了这些，直接安装，不用下载。


</details>

---


<details>
  <summary>无人直播推流脚本</summary>


### 利用GPT写的无人直播FFmpeg推流脚本



### 一键脚本（ubuntu系统）

请创建文件夹并放入需要推流的mp4视频


```screen -S myabc```     #创建一个窗口会话



```curl -sL -o /root/tao.sh https://raw.githubusercontent.com/taotao1058/zhibo/main/tao.sh && chmod 755 /root/tao.sh && /root/tao.sh```

推流成功



然后新开一个终端窗口输入以下命令保持后台运行

```screen -ls```       #查看窗口会话


```screen -d 1728.myabc```     #其中进程ID照你自己的填


如果需要停止 ```screen -X -S 1728.myabc quit```       #关闭该窗口会话


#


#

###  CentOS 7 一键脚本



```curl -sL -o /root/tao.sh https://raw.githubusercontent.com/taotao1058/zhibo/main/aaatao.sh && chmod 755 /root/tao.sh && /root/tao.sh```

#


###  或者手动推流
CD到```/home```文件夹创建一个```vo```的文件并放入需要推流的视频

安装FFmpeg

 
```sudo apt update```


```sudo apt install ffmpeg -y```


然后创建新的会话窗口


``` screen -S myabc```


 推流命令

 
```ffmpeg -re -stream_loop -1 -f concat -safe 0 -i <(find /home/vo -name "*.mp4" -exec echo "file '{}'" \;) -c:v libx264 -preset veryfast -tune zerolatency -profile:v baseline -b:v 800k -maxrate 800k -bufsize 800k -c:a aac -b:a 128k -ar 44100 -f flv -r 30 rtmp://server/live/stream```


请将 ```/home/vo``` 替换为你实际的文件夹路径

请将```rtmp://server/live/stream``` 替换为你的实际推流地址和串流密钥。



然后新开一个终端窗口输入以下命令保持后台运行

```screen -ls```       #查看会话


```screen -d 1728.myabc```     #其中进程ID照你自己的填

如果需要停止```screen -X -S 1728.myabc quit```       #关闭该会话窗口

</details>

---


<details>
  <summary>xui配置二级代理</summary>
  


###  安装xui
```
bash <(curl -Ls https://raw.githubusercontent.com/FranzKafkaYu/x-ui/master/install.sh)
```

###  配置二级代理
```
{
  "api": {
    "services": [
      "HandlerService",
      "LoggerService",
      "StatsService"
    ],
    "tag": "api"
  },
  "inbounds": [
    {
      "listen": "127.0.0.1",
      "port": 62789,
      "protocol": "dokodemo-door",
      "settings": {
        "address": "127.0.0.1"
      },
      "tag": "api"
    }
  ],
  "outbounds": [
    {
      "tag": "zhuzai_proxy",
      "protocol": "socks",
      "settings": {
        "servers": [
          {
            "address": "地址",
            "port": 端口,
            "users": [
              {
                "user": "用户名",
                "pass": "密码"
              }
            ]
          }
        ]
      }
    },
    {
      "protocol": "blackhole",
      "settings": {},
      "tag": "blocked"
    }
  ],
  "policy": {
    "system": {
      "statsInboundDownlink": true,
      "statsInboundUplink": true
    }
  },
  "routing": {
    "rules": [
      {
        "inboundTag": [
          "api"
        ],
        "outboundTag": "api",
        "type": "field"
      },
      {
        "ip": [
          "geoip:private"
        ],
        "outboundTag": "blocked",
        "type": "field"
      },
      {
        "outboundTag": "blocked",
        "protocol": [
          "bittorrent"
        ],
        "type": "field"
      }
    ]
  },
  "stats": {}
}
```

###  指定网站走二级代理
```
{
  "api": {
    "services": [
      "HandlerService",
      "LoggerService",
      "StatsService"
    ],
    "tag": "api"
  },
  "inbounds": [
    {
      "listen": "127.0.0.1",
      "port": 62789,
      "protocol": "dokodemo-door",
      "settings": {
        "address": "127.0.0.1"
      },
      "tag": "api"
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom",
      "settings": {}
    },
    {
      "tag": "zhuzai_proxy",
      "protocol": "socks",
      "settings": {
        "servers": [
          {
            "address": "地址",
            "port": 端口,
            "users": [
              {
                "user": "用户名",
                "pass": "密码"
              }
            ]
          }
        ]
      }
    },
    {
      "protocol": "blackhole",
      "settings": {},
      "tag": "blocked"
    }
  ],
  "policy": {
    "system": {
      "statsInboundDownlink": true,
      "statsInboundUplink": true
    }
  },
  "routing": {
    "rules": [
      {
        "type": "field",
        "outboundTag": "zhuzai_proxy",
        "domain": [
          "ip125.com",
          "geosite:openai",
          "geosite:netflix",
          "geosite:facebook",
          "geosite:paypal",
          "geosite:twitter",
          "geosite:amazon",
          "geosite:disney"
        ]
      },
      {
        "inboundTag": [
          "api"
        ],
        "outboundTag": "api",
        "type": "field"
      },
      {
        "ip": [
          "geoip:private"
        ],
        "outboundTag": "blocked",
        "type": "field"
      },
      {
        "outboundTag": "blocked",
        "protocol": [
          "bittorrent"
        ],
        "type": "field"
      }
    ]
  },
  "stats": {}
}
```

 
</details>
