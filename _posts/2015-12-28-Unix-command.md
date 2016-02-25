---
layout: post
title: Useful Unix Commands
date: 2015-12-28 
tags: Unix
comments: true
description: Clever tricks for project management, system maintainance, team works and so on. I see these as my <i>Swiss Knife</i>
---

&emsp;This list is still under maintainance. 

#### Project management

* Search a specific statement in project files

	`grep -rn "Search item" . `  

* Find a specific file and print its path

	`find . -name "file-name" -print` 

* Print output from stdin to stdout and file.

	`./a.out | tee filename`

#### System maintainance

* Print log information when new logs added.

	`tail -f /var/log/auth.log `

* Print file space usage in kb

	`du -s -Bk`

* Logout a specific user forcely

	`pkill -KILL -u username`

#### Vim tips

* Tab management

	`gt` go next tab
	`gT` go previous tab
	`{i}gt` go the specified tab
	`:e!` reload file
	`:set autoread` Always check file and reload when file is changed
	`:checktime` set check time interval

#### Bash scripts

*	[The advanced bash-scripting guide](http://www.tldp.org/LDP/abs/html/)

#### Software maintainance

*	mysql
```
sudo apt-get install mysql-server // Will install all needed packages.` 
sudo service mysql start
sudo service mysql stop
/etc/mysql/my.cnf //mysql configuration.

mysql -u root -p 
mysql>> use mysql;
mysql>> update user set password=password('new password') where user = 'root';
mysql>> flush privileges;
mysql>> create database test;
mysql>> grant all privileges on test.* to 'test'@'localhost' identified by '1234';
```

#### Configure dinamic library

* Generating .so file
```
gcc -c -o hello.o -fPIC hello.c
gcc -o libhello.so -shared hello.o
```

* Use <i>ldconfig</i> to configure shared library path.




