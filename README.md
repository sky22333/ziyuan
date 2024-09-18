



 - <img src="https://media0.giphy.com/media/pylpD8AoQCf3CQ1oO2/giphy.gif" width=30 height=30>  常用代码记录<br>
#
                               
####  点击三角图标可展开内容

---

<details>
  <summary>VPS常用命令</summary>
	


### 安装node环境
```
curl https://get.volta.sh | bash
```
```
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
```
```
source ~/.bashrc
```
```
volta install node@16.0.0
```
切换node版本只需再次安装需要的版本即可自动切换



### 3xui

```
bash <(curl -Ls https://raw.githubusercontent.com/admin8800/x-ui/main/install.sh)
```

[项目地址](https://github.com/MHSanaei/3x-ui)

###  一键wrap

```
wget -N https://gitlab.com/fscarmen/warp/-/raw/main/menu.sh && bash menu.sh [option] [lisence/url/token]
```

```
warp [option] [lisence]
```


###  一键安装Docker和Docker compose

```
bash <(wget -qO- https://github.com/sky22333/shell/raw/main/kaiji.sh)
```


###  查看系统架构
```
dpkg --print-architecture
```



```
uname -a
```

####  查看系统版本
```
cat /etc/os-release
```
```
lsb_release -a
```


#### 文件搜索
按目录名称查找
```
find / -type d -iname "目录名" 2>/dev/null
```

按文件名称查找
```
find / -type f -name "*文件名*" 2>/dev/null
```

按文件大小查找
```
find / -type f -size +20M -exec ls -lh {} \; 2>/dev/null
```

在整个文件系统中查找包含特定字符串的文件，并输出它们的路径
```
grep -r -l "关键字" /
```

文件重命名命令：`mv`


#### 网络连接相关
显示所有与主机建立连接的IP

TCP 连接：
```
ss -tnp
```

UDP 连接：
```
ss -unp
```
#### 切断除本机以外所有的SSH连接
```
sudo ss -tnp | grep ":22" | grep -v "自己的IP" | awk '{print $6}' | awk -F '[=,]' '{print $2}' | xargs -r sudo kill -9
```

#### 资源占用
显示内存占用最大的10个进程
```
ps aux --sort=-%mem | head -n 10
```
`mem为内存，可改为cpu`



###  VPS开启root登录并且修改密码：

一键脚本

```
bash <(wget -qO- https://github.com/sky22333/rootvps/raw/main/root.sh)
```

### 设置主机名
```
sudo hostnamectl set-hostname wovow
sudo bash -c 'echo "127.0.0.1 wovow" >> /etc/hosts'
```
或者
```
hostnamectl set-hostname localhost
```
### 设置时区为上海
```
sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
```

查看当前时间（注意你与服务器之间的延迟）
```
date
```


### 校准同步系统时间
- 安装
```
sudo apt-get install ntpdate
```
- 国外
```
sudo ntpdate -u time.google.com
```
或者
```
sudo ntpdate -u time.cloudflare.com
```
- 国内
```
sudo ntpdate -u ntp.aliyun.com
```

- 查看
```
timedatectl status
```



###  安装依赖：
 Debian/Ubuntu 命令：
 

```
apt update && apt install curl wget git zip tar lsof vim sudo -y
```


 CentOS 命令：

```
yum update -y
``` 

```
yum install curl wget git zip tar lsof vim sudo -y
``` 

###  一键测试路由回程：

```
wget -qO- git.io/besttrace | bash
```
### 一键测速回程线路
```
curl https://raw.githubusercontent.com/zhanghanyun/backtrace/main/install.sh -sSf | sh
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
ss -tunp
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
sudo fallocate -l 3G /swapfile && sudo chmod 700 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```


###  防火墙

```firewall-cmd --state```                             # 查看防火墙状态    


```systemctl stop firewalld.service```                 # 停止防火墙    


```systemctl disable firewalld.service```              # 禁止防火墙开机自启

###  一键开启bbr加速

```
bash <(wget -qO- https://github.com/teddysun/across/raw/master/bbr.sh)
```

```
sysctl net.ipv4.tcp_congestion_control
```



###  人型自走bot乌班图脚本


```
wget https://raw.githubusercontent.com/TeamPGM/PagerMaid-Pyro/development/utils/install.sh -O install.sh && chmod +x install.sh && bash install.sh
```


使用该脚本会将 ```Pagermaid-Pyro``` 安装至 ```/var/lib/pagermaid``` 目录下。



### 永久激活 Windows 系统和 Office 软件

在 Windows 8.1/10/11 上，右键单击 Windows 开始菜单并 选择 PowerShell 或终端（非 CMD）

```
irm https://massgrave.dev/get | iex
```

稍微等待一下，他会自动适配，并激活您的系统，当出现 Successful 的时候说明系统已经激活成功了


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

- win系统网络故障常用命令，`win+x`打开终端管理员执行

| 命令                   | 作用                                                         |
|------------------------|--------------------------------------------------------------|
| `netsh winsock reset`   | 重置 Windows 套接字（Winsock）目录，解决网络连接问题。         |
| `netsh int ip reset`    | 重置 TCP/IP 协议栈，修复配置错误导致的网络问题。              |
| `ipconfig /release`     | 释放当前计算机的 IP 地址，断开当前网络连接。                  |
| `ipconfig /renew`       | 请求 DHCP 服务器获取新的 IP 地址，恢复网络连接。              |
| `ipconfig /flushdns`    | 清空 DNS 缓存，解决因缓存问题无法访问网站的问题。              |
| `nslookup baidu.com`    | 查看网址用的什么dns进行解析。                                |




</details>

---




<details>
  <summary>无人直播推流脚本</summary>


### FFmpeg无人直播推流脚本


#### [点击这里查看](https://github.com/sky22333/zhibo)

</details>

---




<details>
  <summary>代理工具SSH工具下载</summary>

  
  
  | 类型 | 名称 | 下载地址 |
| :--- | :----: | :---: |
| 安卓代理  | v2rayNG  |https://github.com/2dust/v2rayNG/releases|
| 安卓代理  | clash-meta  |https://github.com/MetaCubeX/ClashMetaForAndroid/releases|
| 安卓代理  | NekoBox |https://github.com/Matsuridayo/NekoBoxForAndroid/releases|
| Win代理  | clash-verge-rev  |https://github.com/clash-verge-rev/clash-verge-rev/releases|
| Win代理  | v2rayN  |https://github.com/2dust/v2rayN/releases|
| ios代理  | 小火箭  |https://apps.apple.com/us/app/shadowrocket/id932747118|
| ios代理  | V2Box  |https://apps.apple.com/us/app/v2box-v2ray-client/id6446814690|
| mac代理  | v2rayU  |https://github.com/yanue/V2rayU/releases|
| mac代理  | V2Box  |https://apps.apple.com/us/app/v2box-v2ray-client/id6446814690|
| mac代理  | clash-verge-rev  |https://github.com/clash-verge-rev/clash-verge-rev/releases|
| Liunx代理  | v2rayA  |https://v2raya.org/docs/prologue/introduction|
| 安卓SSH  | Termius汉化  |https://github.com/alongw/Termius-zh_CN/releases|
| 安卓SSH  | termux |https://github.com/termux/termux-app/releases|
| 安卓SSH  | serverbox  |https://github.com/lollipopkit/flutter_server_box/releases|
| 安卓code  | Acode |https://acode.app|
| 电脑SSH  | tabby  |https://github.com/Eugeny/tabby/releases|
| 电脑SSH  | WindTerm  |https://github.com/kingToolbox/WindTerm/releases|
| 电脑SSH  | FinalShell  |https://www.hostbuf.com/t/988.html|
| 电脑SSH  | MobaXterm汉化版  |https://github.com/RipplePiam/MobaXterm-Chinese-Simplified/releases|
| 电脑code  | vscode  |https://code.visualstudio.com|
| 在线code  | 在线vscode  |https://vscode.dev/?vscode-lang=zh-cn|
| ios SSH  | ServerBox  |https://apps.apple.com/us/app/serverbox-status-tools/id1586449703|
| ios SSH  | Termius |https://apps.apple.com/us/app/termius-terminal-ssh-client/id549039908|
| ios SSH  | xTerminal |https://apps.apple.com/us/app/xterminal-ssh-terminal-shell/id1544728400|

</details>

---

<details>
  <summary>网站收藏or服务器</summary>
    
| 类型 | 名称 | 地址 |
| :--- | :----: | :---: |
| SK5代理  | kookeey  |https://kookeey.com|
| SK5代理 | ip2world  |https://www.ip2world.com|
| SK5代理 | Omega  |https://www.omegaproxy.com/zh|
| 服务器  | vmiss  |https://app.vmiss.com|
| 服务器 | vultr  |https://www.vultr.com|
| 服务器  | 越南家宽  |https://my.cloudfly.vn/cloud/server|
| 服务器  | gigsgigs  |https://clientarea.gigsgigscloud.com|
| 服务器  | CC一刀机  |https://cloudcone.com|
| 服务器  | RN二刀机  |https://my.racknerd.com|
| 服务器  | hostvds一刀机  |https://hostvds.com|
| 服务器  | 搬瓦工  |https://bandwagonhost.com|
| 服务器  | DMIT  |https://www.dmit.io/?language=chinese|
| X学习资料  | 网站合集  |https://theporndude.com/zh|
| X学习资料  | AI画图  |https://pornpen.ai|
| 素材  | 图标素材  |https://aigei.com|
| 礼品卡  | Pockyt Shop |https://shop.pockyt.io/pc/brands/all|
| 网络测试  | ipv6测试  |https://test-ipv6.com|
| 扫描  | dns和端口扫描  |https://search.censys.io|
| 扫描  | 网络扫描  |https://fofa.info|
| 扫描  | 网络扫描  |https://www.zoomeye.org|
| 扫描  | 端口扫描  |https://www.criminalip.io|
| 学习  | 编程菜鸟教程  |https://www.runoob.com|
| api接口  | 图片和文字  |https://api.aixiaowai.cn|
| api接口  | 图片和文字  |https://developer.hitokoto.cn|
| api接口  | 诗词  |https://www.jinrishici.com|
| 图床  | 动漫和动画  |https://mikupic.com|
| 图床  | 国内高速  |https://www.freeimg.cn|
| 网盘  | 网盘资源  |https://wpzy.cc|
| 资源采集  | 影视  |https://hongniuziyuan.com|
| 资源采集  | 影视  |http://lzizy.net|
| 资源采集  | X  |https://apilj.com|
| 资源采集  | X  |https://dadizy11.com|
| 安卓软件  | APK  |https://apkpure.net|
| 安卓软件  | APK  |https://www.apkmirror.com|
| 阅后即焚  | 阅后即焚  |https://www.sixin.cc|
| 支付  | 加密货币支付网关  |https://plisio.net/zh|
| 软件  | 软件搜索和同类型推荐  |https://alternativeto.net|
| 工具  | 在线Markdown编辑器  |https://markdown-editor.org|
| 工具  | 文件匿名分享  |https://wormhole.app|
| 免费隧道  | 一行命令实现内网穿透 |https://serveo.net|


</details>

---


<details>
  <summary>轻量级Liunx文件管理系统</summary>



支持实时管理liunx系统文件的项目

安装：
```
curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
```

启动：
```
filebrowser -a 0.0.0.0 -r /
```

设置—用户管理—用户编辑—增加文件管理命令`unzip tar chmod`

示例`unzip you.zip`  /  `chmod -R 777 home`

</details>

---


<details>
  <summary>Liunx配置wrap</summary>
    


[其他系统安装](https://pkg.cloudflareclient.com/)

debian系统安装：

```
curl -fsSL https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg
```
```
echo "deb [signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list
```
```
sudo apt-get update && sudo apt-get install cloudflare-warp -y
```

注册客户端：

```
warp-cli registration new
```

开启代理模式：

```
warp-cli mode proxy
```

启动wrap：

执行此命令前必须`开启代理模式`否则机器可能失联
```
warp-cli connect
```


wrap将代理本地的`40000`端口

更改代理端口：`warp-cli proxy port 40000`

配置文件：`cd /var/lib/cloudflare-warp`

查看代理IP：
```
curl -x "socks5://127.0.0.1:40000" ipinfo.io
```



开启全局代理：
```
export ALL_PROXY=socks5://127.0.0.1:40000
```
关闭全局代理：
```
unset ALL_PROXY
```



关闭wrap：
```
warp-cli disconnect
```





</details>

---
<details>
  <summary>Git推送到GitHub仓库教程</summary>

### 先在github创建一个仓库，然后本地CD到项目目录


### 初始化本地仓库
```
git init
```
### 连接远程仓库
```
git remote add origin git@github.com:用户名/仓库名.git
```
### 创建并切换到`main`分支
```
git checkout -b main
```
### 确保本地分支是`main`
```
git checkout main
```
### 添加并提交新的更改
```
git add .
git commit -m "描述你的更改"
```
### 推送到仓库
```
git push origin main
```
`main`为分支名

输入用户名和key密钥即可推送完成
#### 操作完成后清除Git存储凭据
```
git config --global --unset credential.helper
```


## 🎈同步上游仓库某一个提交

#### 1：获取上游更新
```
git fetch upstream
```
> 合并上游所有更新`git merge upstream/main` main为本地分支

#### 2：确认上游仓库中是否包含目标提交
```
git branch -r --contains 提交哈希
```

#### 3：使用 -m 选项进行同步指定的提交
```
git cherry-pick -m 1 提交哈希
```
这里的`-m 1`表示选择合并的提交中的第一个父提交的更改。

如果不是合并的提交则去掉`-m 1`

多个`提交哈希`用空格隔开


#### 4：（可选）如果有冲突则找到冲突文件修改

标记所有冲突已解决
```
git add .
```
继续之前因冲突而中止的提交
```
git cherry-pick --continue
```
#### 5：然后就可以推送到远程仓库了
本地dev分支推送到远程dev分支
```
git push origin refs/heads/dev:refs/heads/dev
```

（可选）放弃提交
```
git cherry-pick --abort
```

</details>

---



<details>
  <summary>ansible批量管理主机运维工具</summary>


- ### ✨一键安装脚本
  
```
bash <(wget -qO- https://github.com/sky22333/shell/raw/main/tmp/ansible.sh)
```
 
### 1：安装并创建配置文件
```
sudo apt update
sudo apt install ansible -y
```
```
mkdir -p /etc/ansible && cd /etc/ansible && touch ansible.cfg hosts renwu.yml
```

> `ansible.cfg` 配置Ansible的全局设置。

> `hosts` 定义要管理的主机和主机组。

> `renwu.yml（或playbook）` 描述要在主机上执行的任务和操作步骤。

### 2：禁用被控主机密钥检查

`ansible.cfg`中添加以下配置
```
[defaults]
host_key_checking = False
ansible_ssh_common_args = '-o StrictHostKeyChecking=no'
```


### 3：配置被控主机清单


`hosts`中添加被控主机示例
```
[myservers]
1 ansible_host=192.168.1.1 ansible_user=root ansible_port=22 ansible_ssh_pass=password1
2 ansible_host=192.168.1.2 ansible_user=root ansible_port=22 ansible_ssh_pass=password2
3 ansible_host=192.168.1.3 ansible_user=root ansible_port=22 ansible_ssh_pass=password3
4 ansible_host=192.168.1.4 ansible_user=root ansible_port=22 ansible_ssh_pass=password4
5 ansible_host=192.168.1.5 ansible_user=root ansible_port=22 ansible_ssh_pass=password5
```

### 4：使用ping模块测试所有被控主机连通性


> (可选)查看所有被控机的信息 `ansible-inventory --list -i /etc/ansible/hosts`


```
ansible -m ping all
```

### 5：创建被控主机任务配置文件

`renwu.yml`中添加任务示例

```
---
# 定义要执行任务的主机组
- hosts: myservers
  become: yes  # 以管理员权限运行命令
  tasks:
    - name: 将Shell脚本复制到远程主机
      copy:
        # 本地脚本路径
        src: /etc/ansible/script.sh  
        # 远程主机上的目标路径
        dest: /tmp/script.sh  
        # 设置脚本权限为可执行
        mode: '0755'  

    - name: 在远程主机上执行Shell脚本
      shell: /tmp/script.sh  # 在远程主机上执行脚本
```


或者直接执行远程脚本示例
```
---
# 定义要执行任务的主机组
- hosts: myservers
  become: yes  # 以管理员权限运行命令
  tasks:
    - name: 更新包列表并安装所需的软件包
      shell: |
        apt update
        apt install curl wget git zip tar lsof -y

    - name: 在远程主机上执行Shell脚本
      shell: bash <(wget -qO- https://github.com/sky22333/shell/raw/main/vmess-ws.sh)
      args:
        executable: /bin/bash  # 确保使用bash执行命令
```

### 6：用法示例

- 对所有被控机器运行`renwu.yml`中的任务
```
ansible-playbook renwu.yml
```

- 临时对所有主机执行普通命令
```
ansible all -a "pwd"
```
- 临时对所有主机运行远程脚本
```
ansible all -m shell -a "bash <(wget -qO- https://github.com/sky22333/shell/raw/main/vmess-ws.sh)"
```
- 临时将本地脚本复制给所有被控主机并执行
```
ansible all -m copy -a "src=/etc/ansible/script.sh dest=/tmp/script.sh mode=0755"
ansible all -m shell -a "/tmp/script.sh"
```
- 临时对1，3号主机执行shell命令
```
ansible 1,3 -m shell -a "你的命令"
```
- 临时对1，3号主机执行普通命令
```
ansible 1,3 -a "pwd"
```

> 命令结尾后面追加`-v`选项会显示被控机器详细的执行信息

---

#### 命令解释
> `-m` 用于指定 Ansible 模块
 
> `-a` 用于指定传递给模块的参数或命令

| 模块              | 指令    | 中文解释                                     | 用法示例                                          |
|-------------------|---------|----------------------------------------------|---------------------------------------------------|
| `shell`           | `-a`    | 执行 shell 命令。支持管道、重定向等 shell 特性。 | `ansible all -m shell -a "pwd"`                  |
| `command`         | `-a`    | 执行命令，不通过 shell。默认模块                     | `ansible all -m command -a "ls -l"`              |
| `copy`            | `-a`    | 复制文件或目录到目标主机。                    | `ansible all -m copy -a "src=/local/file dest=/remote/file mode=0644"` |
| `file`            | `-a`    | 管理文件和目录的属性（如权限、所有权等）。    | `ansible all -m file -a "path=/remote/file state=absent"` |
| `yum`             | `-a`    | 使用 Yum 包管理器安装、更新或删除软件包（适用于 RHEL/CentOS）。 | `ansible all -m yum -a "name=nginx state=present"` |
| `apt`             | `-a`    | 使用 APT 包管理器安装、更新或删除软件包（适用于 Debian/Ubuntu）。 | `ansible all -m apt -a "name=nginx state=latest"` |
| `service`         | `-a`    | 管理服务（如启动、停止、重启服务）。         | `ansible all -m service -a "name=nginx state=started"` |
| `systemd`         | `-a`    | 管理 systemd 服务（如启动、停止、重启服务）。| `ansible all -m systemd -a "name=nginx state=started"` |
| `user`            | `-a`    | 管理用户账户（如创建、删除用户）。           | `ansible all -m user -a "name=alice state=present"` |
| `group`           | `-a`    | 管理用户组（如创建、删除组）。               | `ansible all -m group -a "name=admin state=present"` |
| `git`             | `-a`    | 管理 Git 仓库（如克隆、拉取、提交等）。      | `ansible all -m git -a "repo=https://github.com/user/repo.git dest=/path/to/repo"` |
| `template`        | `-a`    | 使用 Jinja2 模板引擎渲染模板文件。            | `ansible all -m template -a "src=template.j2 dest=/etc/config"` |
| `cron`            | `-a`    | 管理 cron 任务。                             | `ansible all -m cron -a "name='Backup' minute='0' hour='2' job='/usr/bin/backup.sh'"` |
| `wait_for`        | `-a`    | 等待某个条件满足（如端口开放、文件存在等）。 | `ansible all -m wait_for -a "port=80 delay=10 timeout=300"` |
| `docker_container`| `-a`    | 管理 Docker 容器（如启动、停止、删除容器）。 | `ansible all -m docker_container -a "name=my_container state=started"` |
| `docker_image`    | `-a`    | 管理 Docker 镜像（如拉取、删除镜像）。      | `ansible all -m docker_image -a "name=nginx tag=latest state=present"` |
| `lineinfile`      | `-a`    | 在文件中插入、删除或修改行。               | `ansible all -m lineinfile -a "path=/etc/hosts line='127.0.0.1 localhost' state=present"` |
| `ini_file`        | `-a`    | 修改 INI 配置文件。                         | `ansible all -m ini_file -a "path=/etc/myconfig.ini section=database option=host value=localhost"` |
| `debug`           | `-a`    | 打印调试信息。                               | `ansible all -m debug -a "msg='This is a debug message'"` |



---
---

#### 执行结果解释
- **ok**: 表示在该主机上成功完成的任务数。
- **changed**: 表示在该主机上有多少任务进行了更改（如文件被复制、脚本被执行）。
- **unreachable**: 表示无法连接的主机数量。
- **failed**: 表示任务失败的数量。
- **skipped**: 表示被跳过的任务数量。
- **rescued**: 表示在任务失败后被恢复的数量。
- **ignored**: 表示被忽略的任务数量。
- 绿色：任务顺利完成
- 橙色：任务执行后有变化，比如文件被修改或某些服务被重启。
- 红色：任务执行失败，一般会终止剩余的所有任务。


#### 如果所有被控机端口和密码都一样
`/etc/ansible/hosts`配置可以这样写
```
[all:vars]
ansible_user=root
ansible_ssh_pass=your_password
ansible_port=22

[myservers]
1 ansible_host=192.168.1.101
2 ansible_host=192.168.1.102
3 ansible_host=192.168.1.103
```



</details>

---





<details>
  <summary>Finalshell文件的一些信息</summary>

- Finalshell是一个强大的国产SSH工具
- finalshell的安装目录下的一些配置信息

```
/backup              # 服务器SSH连接备份文件夹
/conn                # 服务器SSH连接配置文件夹
config.json          # 基本配置文件
knownhosts.json      # 服务器密钥
tconfig.json         # 一些缓存
```

</details>

---





<details>
  <summary>snap和winget包管理器</summary>


## 常用liunx系统Snap包管理器文档


| 发行版 | 安装Snap | 启动Snap服务 | 安装Docker示例 | 安装Caddy示例 |
|--------|----------|--------------|------------|-----------|
| Debian<br>Uubuntu | `sudo apt update && sudo apt install snapd` | `sudo systemctl enable snapd && sudo systemctl start snapd` | `sudo snap install docker` | `sudo snap install caddy` |
| CentOS | `sudo yum install epel-release && sudo yum install snapd && sudo systemctl enable --now snapd.socket` | `sudo systemctl enable snapd && sudo systemctl start snapd` | `sudo snap install docker` | `sudo snap install caddy` |
| Alpine<br>Linux | `apk add snapd && rc-update add snapd` | `service snapd start` | `snap install docker` | `snap install caddy` |
| Kali<br>Linux | `sudo apt update && sudo apt install snapd` | `sudo systemctl enable snapd && sudo systemctl start snapd` | `sudo snap install docker` | `sudo snap install caddy` |

### 说明：

1. **重启系统**：安装snap后，建议重新启动系统或重新登录，以确保snap的路径正确添加到系统环境中。

2. **创建符号链接**：某些系统（如CentOS）可能需要创建符号链接：
```
sudo ln -s /var/lib/snapd/snap /snap
```

3. **安装核心组件**：在安装其他软件包之前，建议先安装核心snap组件：

```
sudo snap install core
```

4. **Alpine Linux注意事项**：Alpine Linux对snap的支持可能不如其他发行版完善，使用时可能会遇到兼容性问题。

5. **权限问题**：如遇权限错误，请使用`sudo`运行snap命令。

6. **网络连接**：确保系统有稳定的网络连接，snap需要从在线存储库下载软件包。

7. **版本选择**：安装软件时可以指定版本，例如：
```
sudo snap install docker --channel=latest/stable
```

8. **查看已安装的snap**：使用以下命令查看已安装的snap：
```
snap list
```

9. **更新snap**：更新所有已安装的snap：
```
sudo snap refresh
```

10. **删除snap**：删除某个snap：
 ```
 sudo snap remove [包名]
 ```
 
 
---
## win系统的winget软件管理器文档

| 操作 | 命令 | 说明 |
|------|------|------|
| 安装 winget | 无需单独安装 | winget 已预装在 Windows 10 1709 及更高版本 |
| 更新 winget | `winget upgrade winget` | 更新 winget 自身 |
| 搜索软件 | `winget search <软件名>` | 搜索可用的软件包 |
| 安装软件 | `winget install <软件名>` | 安装指定的软件包 |
| 卸载软件 | `winget uninstall <软件名>` | 卸载指定的软件包 |
| 更新软件 | `winget upgrade <软件名>` | 更新指定的软件包 |
| 更新所有软件 | `winget upgrade --all` | 更新所有已安装的软件包 |
| 列出已安装软件 | `winget list` | 显示所有已安装的软件包 |

### 说明：

1. **安装 winget**：
   - 在较新的 Windows 10 和 Windows 11 系统中，winget 已经预装。
   - 如果系统中没有 winget，可以从 Microsoft Store 安装 "应用安装程序"（App Installer）。

2. **使用管理员权限**：
   - 某些操作可能需要管理员权限，可以在命令提示符或 PowerShell 中以管理员身份运行。

3. **指定版本**：
   - 安装特定版本的软件：`winget install <软件名> --version <版本号>`

4. **静默安装**：
   - 使用 `--silent` 参数进行静默安装：`winget install <软件名> --silent`

5. **接受协议**：
   - 自动接受许可协议：`winget install <软件名> --accept-package-agreements`

6. **查看软件信息**：
   - 获取软件详细信息：`winget show <软件名>`

7. **导出已安装软件列表**：
   - 导出为 JSON 文件：`winget export -o <文件名>.json`

8. **从文件安装软件**：
   - 从导出的文件安装软件：`winget import -i <文件名>.json`

9. **设置**：
   - 管理 winget 设置：`winget settings`

10. **源管理**：
    - 添加新的软件源：`winget source add <源名称> <源URL>`
    - 列出所有源：`winget source list`

注意：某些软件可能不在 winget 的默认源中。在这种情况下，可能需要添加额外的源或使用其他安装方法。

  
  


</details>

---



<details>
  <summary>数据库常用命令</summary>

### MySQL和MariaDB常用命令

| 数据库          | 操作                | 命令                                                      | 描述                                   |
|-----------------|---------------------|-----------------------------------------------------------|----------------------------------------|
| **MySQL**       | 更新软件包列表       | `sudo apt update`                                        | 更新可用软件包列表                      |
|                 | 安装 MySQL 服务器    | `sudo apt install mysql-server`                           | 安装 MySQL 服务器                       |
|                 | 启动 MySQL 服务      | `sudo systemctl start mysql`                              | 启动 MySQL 服务                         |
|                 | 检查 MySQL 服务状态  | `sudo systemctl status mysql`                             | 检查 MySQL 服务的运行状态               |
|                 | 运行安全安装脚本    | `sudo mysql_secure_installation`                           | 配置 MySQL 安全选项                     |
|                 | 登录 MySQL          | `sudo mysql -u root -p`                                   | 登录 MySQL，输入 root 用户密码          |
| **MariaDB**     | 更新软件包列表       | `sudo apt update`                                        | 更新可用软件包列表                      |
|                 | 安装 MariaDB 服务器 | `sudo apt install mariadb-server`                         | 安装 MariaDB 服务器                     |
|                 | 启动 MariaDB 服务   | `sudo systemctl start mariadb`                            | 启动 MariaDB 服务                       |
|                 | 检查 MariaDB 服务状态 | `sudo systemctl status mariadb`                           | 检查 MariaDB 服务的运行状态             |
|                 | 运行安全安装脚本    | `sudo mysql_secure_installation`                           | 配置 MariaDB 安全选项                   |
|                 | 登录 MariaDB        | `sudo mysql -u root -p`                                   | 登录 MariaDB，输入 root 用户密码       |




| 功能分类    | 命令                                                      | 描述                                                     |
|-------------|------------------------------------------------------------|----------------------------------------------------------|
| **登录数据库** | `mysql -u 用户名 -p`                                        | 登录 MySQL，使用指定的用户名，`-p` 会提示输入密码         |
| **显示数据库** | `SHOW DATABASES;`                                         | 列出当前 MySQL 服务器中的所有数据库                       |
| **使用数据库** | `USE 数据库名;`                                             | 切换到指定数据库                                          |
| **创建数据库** | `CREATE DATABASE 数据库名;`                                  | 创建一个新的数据库                                        |
| **删除数据库** | `DROP DATABASE 数据库名;`                                    | 删除指定数据库                                            |
| **显示当前数据库** | `SELECT DATABASE();`                                  | 显示当前正在使用的数据库                                  |
| **显示数据库表** | `SHOW TABLES;`                                           | 列出当前数据库中的所有表                                  |
| **查看表结构** | `DESCRIBE 表名;`                                             | 查看表的结构 (字段、类型、主键等)                         |
| **创建表**    | `CREATE TABLE 表名 (字段1 数据类型, 字段2 数据类型, ...);`      | 创建一张表，指定列和数据类型                              |
| **删除表**    | `DROP TABLE 表名;`                                           | 删除指定的表                                              |
| **插入数据**  | `INSERT INTO 表名 (字段1, 字段2, ...) VALUES (值1, 值2, ...);` | 插入一条数据                                              |
| **查询数据**  | `SELECT 字段1, 字段2 FROM 表名 WHERE 条件;`                   | 查询表中的数据，可以使用条件过滤                          |
| **更新数据**  | `UPDATE 表名 SET 字段1=值1 WHERE 条件;`                       | 更新指定的表数据                                          |
| **删除数据**  | `DELETE FROM 表名 WHERE 条件;`                                | 删除符合条件的数据                                        |
| **显示创建表语句** | `SHOW CREATE TABLE 表名;`                               | 显示指定表的创建语句                                      |
| **清空表数据** | `TRUNCATE TABLE 表名;`                                      | 清空表中的所有数据，但保留表结构                          |
| **查看索引**  | `SHOW INDEX FROM 表名;`                                       | 查看表中所有的索引                                        |
| **创建索引**  | `CREATE INDEX 索引名 ON 表名 (字段);`                         | 创建索引，提升查询速度                                    |
| **删除索引**  | `DROP INDEX 索引名 ON 表名;`                                  | 删除指定的索引                                            |
| **备份数据库** | `mysqldump -u 用户名 -p 数据库名 > 备份文件.sql`               | 备份数据库，将数据库内容导出为 `.sql` 文件                |
| **恢复数据库** | `mysql -u 用户名 -p 数据库名 < 备份文件.sql`                  | 恢复数据库，将 `.sql` 文件导入指定数据库                  |
| **创建用户**  | `CREATE USER '用户名'@'localhost' IDENTIFIED BY '密码';`       | 创建一个新的 MySQL 用户                                   |
| **删除用户**  | `DROP USER '用户名'@'localhost';`                             | 删除 MySQL 用户                                           |
| **授权权限**  | `GRANT ALL PRIVILEGES ON 数据库名.* TO '用户名'@'localhost';`   | 授予用户对某个数据库的所有权限                           |
| **显示用户权限** | `SHOW GRANTS FOR '用户名'@'localhost';`                    | 显示指定用户的权限                                        |
| **撤销权限**  | `REVOKE ALL PRIVILEGES ON 数据库名.* FROM '用户名'@'localhost';` | 撤销指定用户对某个数据库的权限                            |
| **刷新权限**  | `FLUSH PRIVILEGES;`                                          | 刷新 MySQL 权限表，使权限更改生效                         |
| **查看服务器状态** | `SHOW STATUS;`                                           | 查看 MySQL 服务器的状态和性能指标                         |
| **查看数据库引擎** | `SHOW ENGINES;`                                          | 显示 MySQL 支持的所有存储引擎                             |
| **查看连接信息** | `SHOW PROCESSLIST;`                                        | 显示当前 MySQL 的所有连接信息                             |


- 大多数 SQL 语句都以分号 `;` 结尾。
- 如果 MySQL 的权限系统发生变动（如添加或撤销用户权限），建议运行 `FLUSH PRIVILEGES;` 以刷新权限。


### SQLite常用命令

| 功能分类        | 命令                                                            | 描述                                               |
|-----------------|-----------------------------------------------------------------|----------------------------------------------------|
| **安装 SQLite** | `sudo apt install sqlite3`                                       | 在 Linux（Ubuntu）中安装 SQLite                   |
| **连接 SQLite** | `sqlite3 数据库名.db`                                            | 连接到 SQLite 数据库（如果不存在则创建）           |
| **退出 SQLite** | `.quit`                                                          | 退出 SQLite 命令行工具                             |
| **显示数据库表** | `.tables`                                                       | 显示当前数据库中的所有表                           |
| **查看表结构**   | `.schema 表名`                                                   | 显示指定表的创建语句                               |
| **创建表**      | `CREATE TABLE 表名 (字段1 数据类型, 字段2 数据类型, ...);`        | 创建一张表，指定字段和数据类型                     |
| **插入数据**    | `INSERT INTO 表名 (字段1, 字段2, ...) VALUES (值1, 值2, ...);`   | 插入一条数据                                       |
| **查询数据**    | `SELECT 字段1, 字段2 FROM 表名 WHERE 条件;`                      | 查询表中的数据，可以使用条件过滤                   |
| **更新数据**    | `UPDATE 表名 SET 字段1=值1 WHERE 条件;`                          | 更新指定的表数据                                   |
| **删除数据**    | `DELETE FROM 表名 WHERE 条件;`                                   | 删除符合条件的数据                                 |
| **删除表**      | `DROP TABLE 表名;`                                               | 删除指定的表                                       |
| **查看索引**    | `PRAGMA index_list(表名);`                                       | 查看指定表的索引                                   |
| **创建索引**    | `CREATE INDEX 索引名 ON 表名 (字段);`                            | 创建索引，提升查询速度                             |
| **删除索引**    | `DROP INDEX 索引名;`                                             | 删除指定的索引                                     |
| **导出数据库**  | 先`.output 文件名.sql` 再`.dump`                                  | 导出整个数据库，保存到指定的 SQL 文件              |
| **导入数据库**  | `.read 文件名.sql`                                             | 从 SQL 文件导入数据到当前数据库                    |
| **打开数据库**  | `.open 数据库名.db`                                              | 打开或切换到另一个数据库                           |


### PostgreSQL常用命令

| 操作                       | 命令                                                                                           | 说明                                                                                      |
|----------------------------|------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| **安装 PostgreSQL**         | `sudo apt update` <br> `sudo apt install postgresql postgresql-contrib`                        | 更新包管理器并安装 PostgreSQL 和相关插件                                                   |
| **启动 PostgreSQL 服务**    | `sudo systemctl start postgresql`                                                             | 启动 PostgreSQL 服务                                                                      |
| **重启 PostgreSQL 服务**    | `sudo systemctl restart postgresql`                                                           | 重启 PostgreSQL 服务                                                                      |
| **停止 PostgreSQL 服务**    | `sudo systemctl stop postgresql`                                                              | 停止 PostgreSQL 服务                                                                      |
| **检查 PostgreSQL 状态**    | `sudo systemctl status postgresql`                                                            | 检查 PostgreSQL 服务的当前状态                                                            |
| **设置 PostgreSQL 开机启动**| `sudo systemctl enable postgresql`                                                            | 设置 PostgreSQL 随系统启动自动运行                                                        |
| **切换到 postgres 用户**    | `sudo -i -u postgres`                                                                         | 以 `postgres` 管理员用户登录                                                  |
| **以指定用户登录**          | `psql -U 用户名 -d 数据库名`                    | 以指定用户登录指定数据库              |
| **进入 PostgreSQL shell**   | `psql`                                                                                        | 进入 PostgreSQL 的交互式命令行 shell                                                      |
| **退出 PostgreSQL shell**   | `\q`                                                                                          | 退出 PostgreSQL shell                                                                     |
| **查看数据库列表**          | `\l`                                                                                          | 显示当前 PostgreSQL 实例中的所有数据库                                                    |
| **创建数据库**              | `CREATE DATABASE 数据库名;`                                                                   | 创建一个新数据库                                                                          |
| **删除数据库**              | `DROP DATABASE 数据库名;`                                                                     | 删除指定的数据库                                                                          |
| **查看表格列表**            | `\dt`                                                                                         | 显示当前数据库中的所有表格                                                                |
| **创建表格**                | `CREATE TABLE 表格名 (列1 数据类型, 列2 数据类型, ...);`                                       | 在数据库中创建一个新表格，并定义其列和数据类型                                            |
| **插入数据**                | `INSERT INTO 表格名 (列1, 列2, ...) VALUES (值1, 值2, ...);`                                   | 向表格中插入一条数据记录                                                                  |
| **查询数据**                | `SELECT * FROM 表格名;`                                                                       | 从表格中查询所有数据                                                                      |
| **创建用户**                | `CREATE USER 用户名 WITH PASSWORD '密码';`                                                    | 创建一个新用户，并为其设置密码                                                            |
| **给用户授权**              | `GRANT ALL PRIVILEGES ON DATABASE 数据库名 TO 用户名;`                                         | 为指定的用户授权访问和操作指定数据库的所有权限                                            |
| **删除用户**                | `DROP USER 用户名;`                                                                           | 删除一个指定的用户                                                                        |
| **修改用户密码**            | `ALTER USER 用户名 WITH PASSWORD '新密码';`                                                   | 修改指定用户的密码                                                                        |
| **备份数据库**              | `pg_dump 数据库名 > 备份文件名.sql`                                                           | 将指定数据库备份到一个 `.sql` 文件中                                                      |
| **还原数据库**              | `psql 数据库名 < 备份文件名.sql`                                                              | 从备份的 `.sql` 文件还原数据库                                                            |




</details>

---
