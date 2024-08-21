# 清空 raw 表中的所有规则
iptables -t raw -F

# 创建一个名为 knocked 的 ipset 集合，用于存储已“敲门”的 IP 地址
# 这个集合基于 IP 地址（hash:ip），超时时间为 120 秒，最大元素数量为 2000 个
ipset create knocked hash:ip \
  timeout 120 \
  maxelem 2000

# 在 raw 表的 PREROUTING 链中添加规则
# 如果源 IP 地址在 knocked 集合中，则接受数据包
iptables \
  -t raw --append PREROUTING \
  -m set --match-set knocked src \
  -j ACCEPT

# 在 raw 表的 PREROUTING 链中添加规则
# 匹配来自 UDP 端口 30000 的数据包，并检查其中是否包含字符串 "OpenSesame"
# 如果匹配成功，将源 IP 地址添加到 knocked 集合中，并标记为“已敲门”
iptables \
  -t raw --append PREROUTING \
  -p udp --dport 30000 \
  -m string --string "OpenSesame" --algo bm \
  -j SET --add-set knocked src --exist

# 在 raw 表的 PREROUTING 链中添加默认规则
# 将所有未匹配的数据包丢弃
iptables \
  -t raw --append PREROUTING \
  -j DROP

# 每秒刷新一次，显示 knocked 集合中的 IP 地址，方便监控已“敲门”的 IP
watch -n1 ipset list knocked

# 每秒刷新一次，显示 raw 表中的规则和流量信息，方便监控 iptables 的运行状态
watch -n1 iptables -t raw -nvL
