---
author: enthudrives
comments: true
date: 2011-02-02 13:53:14+00:00
layout: post
link: https://tsuganthi.wordpress.com/2011/02/02/installing-drupal-on-lamp/
slug: installing-drupal-on-lamp
title: Installing drupal on LAMP
wordpress_id: 146
categories:
- fedora
- how to
tags:
- drupal
- Fedora
---



Download drupal from http://drupal.org/download

I prefer drupal-6.20 to drupal-7.0. Download any version of your choice. (say drupal-x.y)

Extract the tar file. You get a folder named drupal-x.y. 
Rename drupal-x.y/sites/default/default.settings.php to drupal-x.y/sites/default/settings.php
Create a directory named sites under /var/www/html
Move the folder drupal-x.y to /var/www/html/sites

Create a new database for your site.




<blockquote>mysqladmin -u username -p create databasename </blockquote>





Log in and set the access database rights:




<blockquote>mysql -u username -p
</blockquote>








<blockquote>GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER, LOCK TABLES, CREATE TEMPORARY TABLES ON `databasename`.* TO 'username'@'localhost' IDENTIFIED BY 'password'; </blockquote>









<blockquote>FLUSH PRIVILEGES;</blockquote>






Run your apache server and mysql server.




<blockquote>
service httpd start
service mysqld start</blockquote>






Now open http://localhost/sites in your browser.

Click on drupal-x.y. Follow the instructions provided there and complete your installation.
