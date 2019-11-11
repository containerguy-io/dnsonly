# Plesk and cPanel DNS Cluster with cPanel DNSONLY

This repository contains the required tools and scripts for installation of the DNS Clustering.

## Installation

Just follow the guide http://containerguy.io/dns-clustering-with-plesk-windows-cpanel-dnsonly/.

## Converting Plesk Bind DNS files 

Use "converter.sh".

## Add Crontab Entry

```bash
*/5 * * * * /root/converter.sh >> /root/converter.sh.log 2>&1
```
