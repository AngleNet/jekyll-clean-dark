---
layout: post
title: OS<sub>2</sub>--Device Driver
date: 2016-03-24 
tags: Operating-System 
description: This series of blogs are class notes when I take the <b>CMU</b> <a href=https://www.cs.cmu.edu/~410/schedule.html>Operating system course</a>
---

### 1. Development Environment

Before coding, almost the most important thing is to get surpport code running. Sometimes it is not such easy to get everything right. This is the case. The trouble just comes. The following is my solution:

*   run `vagrant init ubuntu/trusty64 && vagrant up --provider virtualbox` to provide a clean environment for me. And [Atlas](https://atlas.hashicorp.com/boxes/search) is a nice place to search your appropriate boxes.
*   run update.sh, it will update all surpport code with the official release.
*   download [simics](http://download.simics.net/pub/simics/4.8_fcd175/). The simics forum is a good place.
*   run `apt-get install mtools` to access utilities of MS-DOS on linux.
*   Till now, we compiles the surpport code and generates the boot image.


