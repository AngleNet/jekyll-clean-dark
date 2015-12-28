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
`grep -rn "Search item" . `  

* Find a specific file and print its path
`find . -name "file-name" -print` 

#### System maintainance

* Print log information when new logs added.
`tail -f /var/log/auth.log `