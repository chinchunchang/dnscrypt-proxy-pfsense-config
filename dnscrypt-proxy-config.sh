fetch https://github.com/felixonmars/dnsmasq-china-list/raw/master/accelerated-domains.china.conf
echo '# Converted from https://github.com/felixonmars/dnsmasq-china-list/blob/master/accelerated-domains.china.conf' >/tmp/dnscrypt-forwarding-rules.txt
echo '# https://github.com/felixonmars/dnsmasq-china-list' >>/tmp/dnscrypt-forwarding-rules.txt
echo '# Thanks to all contributors.' >>/tmp/dnscrypt-forwarding-rules.txt
echo '' >>/tmp/dnscrypt-forwarding-rules.txt
cat /tmp/accelerated-domains.china.conf | grep -v '^#server' | sed -e 's|/| |g' -e 's|^server= ||' | sed 's/114.114.114.114/223.5.5.5,119.29.29.29/g' >>/tmp/dnscrypt-forwarding-rules.txt

fetch https://github.com/felixonmars/dnsmasq-china-list/raw/master/bogus-nxdomain.china.conf
echo '# Converted from https://github.com/felixonmars/dnsmasq-china-list/blob/master/bogus-nxdomain.china.conf' >/tmp/dnscrypt-blacklist-ips.txt
echo '# https://github.com/felixonmars/dnsmasq-china-list' >>/tmp/dnscrypt-blacklist-ips.txt
echo '# Thanks to all contributors.' >>/tmp/dnscrypt-blacklist-ips.txt
echo '' >>/tmp/dnscrypt-blacklist-ips.txt
cat /tmp/bogus-nxdomain.china.conf | grep -v '^#bogus' | grep bogus-nxdomain | sed 's/bogus-nxdomain=//g' >>/tmp/dnscrypt-blacklist-ips.txt

fetch https://github.com/missdeer/blocklist/raw/master/toblock-without-shorturl-optimized.lst
echo '# Converted from https://github.com/missdeer/blocklist/blob/master/toblock-without-shorturl-optimized.lst' >/tmp/dnscrypt-blacklist-domains.txt
echo '# https://github.com/missdeer/blocklist' >>/tmp/dnscrypt-blacklist-domains.txt
echo '# Thanks to all contributors.' >>/tmp/dnscrypt-blacklist-domains.txt
echo '' >>/tmp/dnscrypt-blacklist-domains.txt
cat /tmp/toblock-without-shorturl-optimized.lst | grep -v '^#' | tr -s '\n' | tr A-Z a-z | grep -v '^ad\.' | grep -v -e '^ad[0-9]' | grep -v '^ads\.' | grep -v -e '^ads[0-9]' | rev | sort -n | uniq | rev >>/tmp/dnscrypt-blacklist-domains.txt

fetch https://github.com/googlehosts/hosts/raw/master/hosts-files/dnscrypt-proxy-cloaking.txt
echo '# Converted from https://github.com/googlehosts/hosts/blob/master/hosts-files/dnscrypt-proxy-cloaking.txt' >/tmp/dnscrypt-cloaking-rules.txt
echo '# https://github.com/googlehosts/hosts' >>/tmp/dnscrypt-cloaking-rules.txt
echo '# Thanks to all contributors.' >>/tmp/dnscrypt-cloaking-rules.txt
echo '' >>/tmp/dnscrypt-cloaking-rules.txt
cat /tmp/dnscrypt-proxy-cloaking.txt >>/tmp/dnscrypt-cloaking-rules.txt

rm /tmp/accelerated-domains.china.conf /tmp/bogus-nxdomain.china.conf /tmp/toblock-without-shorturl-optimized.lst /tmp/dnscrypt-proxy-cloaking.txt

fetch https://raw.githubusercontent.com/jedisct1/dnscrypt-proxy/master/dnscrypt-proxy/example-dnscrypt-proxy.toml
fetch -o dnscrypt-captive-portals.txt https://raw.githubusercontent.com/DNSCrypt/dnscrypt-proxy/master/dnscrypt-proxy/example-captive-portals.txt
fetch https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/odoh-relays.md
fetch https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/odoh-servers.md
fetch https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/parental-control.md
fetch https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/public-resolvers.md
fetch https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/relays.md
fetch https://www.quad9.net/quad9-resolvers.md
