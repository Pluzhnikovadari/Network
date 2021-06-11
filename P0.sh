ip link set dev enp0s3 up
ip addr add 10.20.40.5/24 dev enp0s3
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
sysctl net.ipv4.ip_forward=1
dhcpcd enp0s8
iptables -t nat -o enp0s8 -A POSTROUTING -j MASQUERADE
ip r add 10.20.30.0/24 via 10.20.40.1
ip r add 10.20.20.0/24 via 10.20.40.1
ip addr add 10.0.4.4/24 dev enp0s9
ip link set enp0s9 up
iptables -t nat -o enp0s9 -A POSTROUTING -j MASQUERADE
ip r add default via 10.0.4.1 dev enp0s9
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
sysctl net.ipv4.ip_forward=1
ip rule add dport 443 table 2
ip rule add dport 80 table 2
ip route add default via 10.0.4.1 table 2

