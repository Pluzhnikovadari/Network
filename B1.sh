ip link set enp0s3 up
ip link set enp0s8 up
ip link add glue type bridge
ip link set glue up
ip link set enp0s3 master glue
ip link set enp0s8 master glue
