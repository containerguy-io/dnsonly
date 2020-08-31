cd /var/named
find . -type f -maxdepth 1 ! -name 'named.*' ! -name '*.lock' ! -name '*.db' ! -name 'localdomain.zone' ! -name 'localhost.zone' ! -name '*.nzf' ! -name 'localhost.zone' ! -name 'ipx.us.db' ! -name 'ns1.xhost.com.db' | cut -d / -f2 > /root/domainlists.txt

while read line
do
echo Yes | cp -rfp "/var/named/${line}" "/var/named/${line}.db"

done < /root/domainlists.txt

/scripts/dnscluster syncall --full
