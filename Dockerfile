docker pull hwdsl2/ipsec-vpn-server
mkdir /docker 
mkdir /docker/vpn 
nano /docker/vpn/vpn.env
VPN_IPSEC_PSK=qwertyuiop
# 用户账号
VPN_USER=qwertyuiop
# 链接密码
VPN_PASSWORD=qwertyuiop
#降级
VPN_ENABLE_MODP1024=yes
docker run \
-itd \
--name vpn \
--env-file /docker/vpn/vpn.env \
--restart=always \
-p 500:500/udp \
-p 4500:4500/udp \
-d --privileged \
hwdsl2/ipsec-vpn-server
