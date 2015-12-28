---
layout: post
title: Useful Unix Commands
date: 2015-12-28 
tags: Unix
description: Clever tricks for project management, system maintainance, team works and so on. I see these as my <i>Swiss Knife</i>
---

&emsp;&emsp;This list is still under maintainance. 

#### Project management

* Search a specific statement in project files

&emsp;&emsp;`grep -rn "Search item" . `  

* Find a specific file and print its path

&emsp;&emsp;`find . -name "file-name" -print` 

#### System maintainance

* Print log information when new logs added.

&emsp;&emsp;`tail -f /var/log/auth.log `