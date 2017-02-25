---
author: enthudrives
comments: true
date: 2009-11-12 17:05:00+00:00
layout: post
link: https://tsuganthi.wordpress.com/2009/11/12/fedora-for-beginners/
slug: fedora-for-beginners
title: Fedora for beginners
wordpress_id: 87
categories:
- fedora
- how to
tags:
- cannot retrieve repository metadata repomd.xml error
- Fedora
- fedora beginner
- fedora proxy
- install fedora
- install linux
- repomd.xml
---

I was using Ubuntu and Windows in my laptop for a long period of time. As we are behind a proxy in college and when I go home, I had to change the settings often. So I used ubuntu only when I went home. At a point of time, I very badly wanted to quit windows. Though I like ubuntu, I had a special attraction towards fedora. I installed fedora 11 in my laptop on 1st Nov,2009. Now my laptop has only Fedora. It took one full day to set my laptop to use. ie, to access net, additional packages like unrar, flash etc. I think there will be many noobs like me, who need help to do the installation quicker.  Here I list those which I did as soon as the installation was over.(To access internet)

*If you are behind a proxy,Change the proxy settings. You could find a file "yum.conf" in \etc directory. Include these two lines in the file


proxy=http://proxyaddress:portnumber




timeout=300


Then, you need to install RPM fusion repositories(free and non-free)




<blockquote>http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm
</blockquote>




Now we are done. You can access internet from your newly installed fedora. :)

Some additional packages which you would need: (You must be the root user to install softwares.Type "su" in the terminal)

Adobe flash plug-in:

Get the rpm file from http://get.adobe.com/flashplayer

Or type yum install flash-plugin

VLC:

yum install vlc 

I think these basic packages are enough to start surfing around :)
