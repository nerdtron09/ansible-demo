# ansible-demo
Ansible exercise

## Common Role
Create group: cloudadmin, users

Create users: admin1, admin2, admin3 - cloudadmin group

Create users: user1, user2, user3 - users group

Add cloudadmin to have Sudo priveleges

Ensure /etc/shadow file permission to 0600

Ensure /var/log/syslog file permission to 0600

Install the following packages:
	chrony
	xfsprogs
	cifs-utils
	nfs-common
	azure-cli
	unzip
	jq
	lvm2


Copy chrony.conf to targets, restart chrony

Add MOTD
```
********************************************************************
* Legal Notice                                                     *
* ================================================================ *
* Unauthorized access and use of this system is strictly           *
* prohibited and can result in civil and criminal penalties.       *
*                                                                  *
********************************************************************
```

## Web Server
Install packages
apache2
php-mysql
mysql-common 

Copy app.tar.gz file, Extract to /var/www/html

Copy custom about.html template file to /var/www/html

Restart apache2, ensure it is running on startup

Download the terroform 0.15.4, extract and copy binary to the /usr/local/bin

## DB Server
Install packages: 
	mariadb-server

Restart mariadb-server, ensure it is running on startup

Create dbuser on mariadb-server

Create a Test DB database and assign to the dbuser

Copy backup script of mariadb on folder /home/ansibleuser/dbbackup

Create crontab for the backup script at 1AM, run the backup script
