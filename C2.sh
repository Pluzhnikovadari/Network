ip link set enp0s3 up
ip addr add 10.20.30.1/24 dev enp0s3
ip link set enp0s8 up
ip addr add 10.20.20.1/24 dev enp0s8
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
sysctl net.ipv4.ip_forward=1
ip link set enp0s9 up
ip addr add 10.20.40.1/24 dev enp0s9
ip r add default via 10.20.40.5

