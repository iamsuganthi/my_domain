---
author: enthudrives
comments: true
date: 2011-02-19 12:56:49+00:00
layout: post
link: https://tsuganthi.wordpress.com/2011/02/19/three-days-on-the-rails/
slug: three-days-on-the-rails
title: Three days on the Rails
wordpress_id: 148
categories:
- fedora
- how to
- linux
- RoR
tags:
- fedora ror
- gem install rails
- gem install sqlite3
- libsqlite3-dev fedora
- ror
- rubyonrails
- sqlite3.h missing
- sqlite3/sqlite3_native (LoadError)
- srishti software
- ssn cse ror
- ssn ror
---

Before 2 yrs, I came to know about Ruby on Rails(RoR) from the internet. I tried learning it. But failed. May be I was very lazy. Recently,I attended a 3 day workshop on Ruby on Rails in my college which helped me to kickstart my RoR learning.
Like I expected, the resource persons were comfy with installing RoR on Windows. They got the exe files in CD. People were running around to get it in their pendrives and installed it on their windows machines. I was sitting in the last bench, installing and learning stuff on my own. Why run for setup files when “yum” or “apt-get” makes things easier for you!! I encountered almost all kinds of errors that could occur on a fedora machine during RoR installation. That is the best part of the workshop. Surfing around lot of forums, I came to know that I am not the only person who suffers from such errors. Errors that occured on my system are quite common among linux RoR-ers. But most of the solutions were available for Ubuntu users. Are there less number of Fedora RoR-ers? I dont know!!
I dedicate this post to all newbies struggling with RoR installation on Fedora ;)

**To install:**


<blockquote>#yum install ruby sqlite rubygems rubygem-sqlite3-ruby
#gem install rails rake</blockquote>


To see the list of gems installed type,


<blockquote>#gem list</blockquote>


Now everything is set and ready to roar.

To test the installation, let us create an application.


<blockquote>$ rails new sample
$ cd sample
$ rails server</blockquote>


This will get your server running.
If you see something like,

=> Booting WEBrick

=> Rails 3.0.4 application starting in development on http://localhost:3000

=> Call with -d to detach

=> Ctrl-C to shutdown server

it is a sign of proper installation. :)

First, learn the basic syntax of ruby language. There are a plenty of tutorials available on the internet.

Then learn how to create the Model, View and Controller for your application.

I used the following tutorials to get started with RoR:
http://www.ruby-lang.org/en/documentation/quickstart
http://www.ruby-doc.org/docs/ProgrammingRuby/html/tut_expressions.html
http://guides.rubyonrails.org/getting_started.html

Installation seems to be quite simple, right? Let me post the list of bugs I encountered in this process.


<blockquote>#gem install rails
1 gem installed
Installing ri documentation for rails-3.0.0...
File not found: lib
Installing rdoc documentation for rails-3.0.0...
File not found: lib
Install rdoc and ri before installing rails

#gem install rdoc ri rails</blockquote>


It will work fine.


<blockquote>#gem install sqlite3
Building native extensions.  This could take a while...
ERROR:  Error installing sqlite3:
ERROR: Failed to build gem native extension.
/usr/bin/ruby extconf.rb
checking for sqlite3.h... no
sqlite3.h is missing. Try 'port install sqlite3 +universal'
or 'yum install sqlite3-devel' and check your shared library search path
(the location where your sqlite3 shared library is located).
*** extconf.rb failed *** ....</blockquote>


I think sqlite3 gem is not available for fedora. sqlite3-ruby is a similar gem. So, let us install it.


<blockquote>#gem install sqlite3-ruby
Building native extensions.  This could take a while...
ERROR:  Error installing sqlite3:
ERROR: Failed to build gem native extension.
/usr/bin/ruby extconf.rb
checking for sqlite3.h... no
sqlite3.h is missing. Try 'port install sqlite3 +universal'
or 'yum install sqlite3-devel' and check your shared library search path
(the location where your sqlite3 shared library is located).
*** extconf.rb failed *** ....</blockquote>


Oh no! sqlite3-ruby should be installed using yum. (Chill. Just wanted you to know the problems involved ;))


<blockquote>#yum install rubygem-sqlite3-ruby</blockquote>


This will work perfectly fine. This happens during the installation of most of the gems.
If  “_gem install some_gem_”  throws a similar error as mentioned above, install it using “_yum install rubygem-some_gem_” .

**The major cause of any problem arising due to sqlite3 is its improper installation**. It is NOT SAFE to move on with incomplete sqlite3 installation. You will face lot of complicated problems in the later stage.

Now, create your application.


<blockquote>rails new sample
cd sample
rails server</blockquote>


You will get the error
“Could not find sqlite3-1.3.3 in any of the sources”
Because, you have the gem sqlite3-ruby. Not sqlite3. So you should map between these two gems. This can be done using the Gemfile. (sample/Gemfile)

I have shown only the necessary lines of the Gemfile.


<blockquote>gem 'sqlite3'

#..
#..
# gem 'sqlite3-ruby', :require => 'sqlite3'</blockquote>


Uncomment the line “gem 'sqlite3-ruby', :require => 'sqlite3'” and comment the line “gem 'sqlite3'”
Now your Gemfile looks like


<blockquote>#gem 'sqlite3'

#..
#..
gem 'sqlite3-ruby', :require => 'sqlite3'</blockquote>


Thats it. Now run your server. Don't forget to edit the Gemfile of every new project you create.


<blockquote>$rails server
=> Booting WEBrick

=> Rails 3.0.4 application starting in development on http://localhost:3000

=> Call with -d to detach

=> Ctrl-C to shutdown server</blockquote>


Installation Success :)
