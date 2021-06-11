ip link set enp0s3 up
ip addr add 10.20.20.5/25 dev enp0s3 
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
ip r add default via 10.20.20.1

