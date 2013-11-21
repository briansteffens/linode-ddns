exec:

compile:

install: linode-ddns
	@sudo ls > /dev/null
	sudo cp linode-ddns /usr/bin/linode-ddns
	sudo chmod +x linode-ddns
	sudo mkdir /etc/linode-ddns
	sudo cp etc/example.com.conf /etc/linode-ddns/example.com.conf
	sudo touch /var/linode-ddns
	@echo
	@echo "Make sure whichever user linode-ddns will be run as can read the "
	@echo "*.conf files in /etc/linode-ddns and read+write /var/linode-ddns."
	@echo

uninstall:
	@sudo ls > /dev/null
	sudo rm /var/linode-ddns
	sudo rm /usr/bin/linode-ddns
	@echo
	@echo "Config files left in /etc/linode-ddns"
	@echo
	

