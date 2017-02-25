---
author: enthudrives
comments: true
date: 2011-12-06 15:19:09+00:00
layout: post
link: https://tsuganthi.wordpress.com/2011/12/06/problem-with-virtualbox/
slug: problem-with-virtualbox
title: Problem with Virtualbox?
wordpress_id: 170
categories:
- fedora
- how to
- linux
tags:
- '"/etc/init.d/vboxdrv setup"'
- dkms
- Fedora
- kernel
- linux
- virtualbox
---

Virtualbox doesnt function normally if you have upgraded your kernel. So remove the older versions of your kernel after each upgrade. Else, you wont be able to start a virtual OS by hitting start. You will get an error saying run "/etc/init.d/vboxdrv setup".


<blockquote>To see the list of kernels available, type** rpm -qa kernel**.
To remove older kernels, type **rpm -e kernel-<version>**
Then run **/etc/init.d/vboxdrv setup**</blockquote>


Now your virtual os will start normally.
