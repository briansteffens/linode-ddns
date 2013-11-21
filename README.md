linode-ddns
===========

Dynamic DNS update script for Linode.


Installation
============
To download and install:
```
git clone https://github.com/Tiltar/linode-ddns
cd linode-ddns
sudo make install
```

To configure, customize /etc/linode-ddns/example.com.conf. You'll need a Linode API key and IDs
for the domain and DNS record to update. Multiple domains/records can be updated at once if there
are multiple files following the example.com.conf template in /etc/linode-ddns.


Usage
=====
To do a single check and possibly update DNS records:
```
linode-ddns
```

To make it run automatically, edit the crontab:
```
crontab -e
```
Putting the following in the crontab will make the script check every 10 minutes:
```
0,10,20,30,40,50 * * * * linode-ddns
```


Uninstallation
==============
To uninstall (from the git folder):
```
sudo make uninstall
```
