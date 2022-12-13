2022-12-12 Multiple Interface IP Test
=====================================

# 1

eth0: 169.254.0.0/16 connected to 169.254.212.194/16

eth1: 10.84.110.51/25

```bash
~> ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 6c:2b:59:cf:c2:00 brd ff:ff:ff:ff:ff:ff
    altname enp2s0
    inet 169.254.9.212/16 brd 169.254.255.255 scope link eth0:avahi
       valid_lft forever preferred_lft forever
3: eth1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 6c:2b:59:cf:c2:f1 brd ff:ff:ff:ff:ff:ff
    altname enp0s31f6
    inet 10.84.110.51/24 brd 10.84.110.255 scope global dynamic noprefixroute eth1
       valid_lft 40139sec preferred_lft 40139sec
    inet6 fe80::6e2b:59ff:fecf:c2f1/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```

```bash
~> ip route 
default via 10.84.110.1 dev eth1 proto dhcp metric 100 
default dev eth0 scope link metric 1002 
10.84.110.0/24 dev eth1 proto kernel scope link src 10.84.110.51 metric 100 
169.254.0.0/16 dev eth0 proto kernel scope link src 169.254.9.212
```

```bash
~> ping 169.254.212.194
PING 169.254.212.194 (169.254.212.194) 56(84) bytes of data.
64 bytes from 169.254.212.194: icmp_seq=3 ttl=128 time=0.842 ms
64 bytes from 169.254.212.194: icmp_seq=4 ttl=128 time=0.835 ms
64 bytes from 169.254.212.194: icmp_seq=5 ttl=128 time=2.03 ms
64 bytes from 169.254.212.194: icmp_seq=6 ttl=128 time=0.959 ms
```

# 2

eth0: 169.254.0.0/16 connected to 169.254.212.194/16

eth1: 169.254.0.0/16 connected to 169.254.182.81/16

```bash
~> ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 6c:2b:59:cf:c2:00 brd ff:ff:ff:ff:ff:ff
    altname enp2s0
    inet 169.254.9.212/16 brd 169.254.255.255 scope link eth0:avahi
       valid_lft forever preferred_lft forever
    inet6 fe80::527c:167d:d4a1:aeca/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
3: eth1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 6c:2b:59:cf:c2:f1 brd ff:ff:ff:ff:ff:ff
    altname enp0s31f6
    inet 169.254.15.122/16 brd 169.254.255.255 scope link eth1:avahi
       valid_lft forever preferred_lft forever
```

```bash
~> ip route 
default dev eth0 scope link metric 1002 
default dev eth1 scope link metric 1003 
169.254.0.0/16 dev eth0 proto kernel scope link src 169.254.9.212 
169.254.0.0/16 dev eth1 proto kernel scope link src 169.254.15.122 
```

```bash
~> ping 169.254.212.194
PING 169.254.212.194 (169.254.212.194) 56(84) bytes of data.
64 bytes from 169.254.212.194: icmp_seq=1 ttl=128 time=1.83 ms
64 bytes from 169.254.212.194: icmp_seq=2 ttl=128 time=0.844 ms
64 bytes from 169.254.212.194: icmp_seq=3 ttl=128 time=2.06 ms
64 bytes from 169.254.212.194: icmp_seq=4 ttl=128 time=0.961 ms
^C
--- 169.254.212.194 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3030ms
rtt min/avg/max/mdev = 0.844/1.424/2.063/0.529 ms

~> ping 169.254.182.81
PING 169.254.182.81 (169.254.182.81) 56(84) bytes of data.
From 169.254.9.212 icmp_seq=1 Destination Host Unreachable
From 169.254.9.212 icmp_seq=2 Destination Host Unreachable
From 169.254.9.212 icmp_seq=3 Destination Host Unreachable
From 169.254.9.212 icmp_seq=4 Destination Host Unreachable
From 169.254.9.212 icmp_seq=5 Destination Host Unreachable
From 169.254.9.212 icmp_seq=6 Destination Host Unreachable
^C
--- 169.254.182.81 ping statistics ---
7 packets transmitted, 0 received, +6 errors, 100% packet loss, time 6141ms
pipe 4
```
