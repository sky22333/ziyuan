# 清空 raw 表中的所有规则
iptables -F -t raw

# 在 raw 表的 PREROUTING 链中添加规则
# 检查是否有 IP 地址在最近 600 秒内被标记为 knocked
# 如果匹配成功，接受数据包
iptables \
  -t raw --append PREROUTING \
  -m recent --name knocked --rcheck --seconds 600 \
  -j ACCEPT

# 在 raw 表的 PREROUTING 链中添加规则
# 匹配来自 UDP 端口 30000 的数据包，并检查其中是否包含字符串 "OpenSesame"
# 如果匹配成功，将源 IP 地址添加到 knocked 列表中，并丢弃数据包
iptables \
  -t raw --append PREROUTING \
  -p udp --dport 30000 \
  -m string --string "OpenSesame" --algo bm \
  -m recent --name knocked --set \
  -j DROP

# 在 raw 表的 PREROUTING 链中添加默认规则
# 将所有未匹配的数据包丢弃
iptables \
  -t raw --append PREROUTING \
  -j DROP

# 显示 recent 模块中名为 knocked 的 IP 列表，查看“敲门”情况
cat /proc/net/xt_recent/knocked
