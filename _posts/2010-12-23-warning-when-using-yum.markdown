---
author: enthudrives
comments: true
date: 2010-12-23 11:52:49+00:00
layout: post
link: https://tsuganthi.wordpress.com/2010/12/23/warning-when-using-yum/
slug: warning-when-using-yum
title: Warning when using yum
wordpress_id: 120
categories:
- fedora
- how to
- linux
tags:
- Fedora
- fedora 14
- laughling
- rpmts_HdrFromFdno
- yum
- yum install
---

I got this warning when I installed my first package in freshly installed fedora 14. Thought it would help those few ppl who might get the same error as mine.
The first package I installed is VLC. After downloading the required packages and dependencies, I got a warning.


<blockquote>warning: rpmts_HdrFromFdno: Header V3 RSA/SHA256 Signature, key ID 865cc9ea: NOKEY</blockquote>


and the installation stopped :(

This is because, I had installed an older version of rpm repositories.

To recover from this error,type


<blockquote>su -c
yum localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm</blockquote>



Of course, this is not the only way to do this.. The other easy way is to download the repositories manually by clicking the rpm file.. (as mentioned in my [old post](http://tsuganthi.wordpress.com/2009/11/12/fedora-for-beginners/) )

The target is to update your repositories. No matter how you do it. Now yum works perfectly fine. :)
