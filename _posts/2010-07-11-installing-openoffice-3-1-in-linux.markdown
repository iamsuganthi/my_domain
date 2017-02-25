---
author: enthudrives
comments: true
date: 2010-07-11 17:17:22+00:00
layout: post
link: https://tsuganthi.wordpress.com/2010/07/11/installing-openoffice-3-1-in-linux/
slug: installing-openoffice-3-1-in-linux
title: Installing Openoffice 3.1 in Linux
wordpress_id: 80
categories:
- how to
tags:
- OOO310_m19_native_packed-1_en-US.9420
- openoffice install linux
- openoffice.org-ure-1.5.1-9420.i586.rpm
---

The best way to install any software package is via terminal. But for those who are not comfortable with it, there are alternatives.

Download the package from [http://download.openoffice.org/](http://download.openoffice.org/)

Extract the package. Go to the folder RPMS. You will have a lot of rpm files in it. Install them one by one in the right order(In the order it is displayed by default). Because they are dependent on each other.

The last package _"openoffice.org-ure-1.5.1-9420.i586.rpm"___ would show some error.


<blockquote>`Cannot install ~/OOO310_m19_native_packed-1_en-US.9420/RPMS/openoffice.org-ure-1.5.1-9420.i586.rpm  as no transaction`</blockquote>


Leave it.

Install the menu rpm from the subfolder for menus under rpms.

You will now be able to see the list of open office packages available under Applications->Office. But clicking it would not open the application. This means link is not established between the menu and the package.

As root user, type the following


<blockquote>`
cd /opt/openoffice.org/basis3.1
mv ure-link  ure-link.backup
ln -s /usr/lib/openoffice.org/ure ure-link`</blockquote>


Done!
