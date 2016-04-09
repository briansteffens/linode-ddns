linode-ddns
===========

Dynamic DNS update script for Linode.


Requirements
============

Requires the wanip client (https://github.com/briansteffens/wanip).


Installation
============

To download and install:

```
git clone https://github.com/briansteffens/linode-ddns
cd linode-ddns
sudo make install
```

To configure, customize /etc/linode-ddns/example.com.conf. You'll need a Linode
API key and IDs for the domain and DNS record to update. Multiple
domains/records can be updated at once if there are multiple files following
the example.com.conf template in /etc/linode-ddns.

Make sure whichever user linode-ddns will be run as can read the *.conf files
in /etc/linode-ddns and read+write /var/linode-ddns.

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

Putting the following in the crontab will make the script check every 10
minutes:

```
0,10,20,30,40,50 * * * * linode-ddns
```


Uninstallation
==============

To uninstall (from the repo folder):
```
sudo make uninstall
```
