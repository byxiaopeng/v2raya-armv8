#!/bin/bash
if [ ! -e '/usr/local/share/v2ray/LoyalsoldierSite.dat' ]; then
    cp /tmp/v2ray/LoyalsoldierSite.dat /usr/local/share/v2ray/LoyalsoldierSite.dat
    cp /tmp/v2ray/geoip.dat /usr/local/share/v2ray/geoip.dat
    cp /tmp/v2ray/geosite.dat /usr/local/share/v2ray/geosite.dat
    rm -rf /tmp/v2ray
    echo "拷贝geoip文件"
fi
echo 3 > /proc/sys/net/ipv4/tcp_fastopen
echo "开启tcp_fastopen"
##smartdns -c /etc/v2raya/smartdns.conf
v2raya --mode=universal --webdir=/etc/v2raya-web
