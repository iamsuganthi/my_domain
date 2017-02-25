---
author: enthudrives
comments: true
date: 2011-10-25 13:23:00+00:00
layout: post
link: https://tsuganthi.wordpress.com/2011/10/25/opengl-and-glut/
slug: opengl-and-glut
title: OpenGL and glut
wordpress_id: 176
categories:
- c++
- fedora
- glut
- graphics programming
- install
- opengl
- yum install g++
tags:
- Fedora
- gcc
- glut
- opengl
---

To install OpenGL and glut in fedora,

  


Type in the following commands as root user.. 

  


If you donot have C++, Instal it 

              #yum install gcc-c++

Then install the freeglut devel package

                   #yum install freeglut-devel

  


Compile your c++ code as

  


               g++ -L/usr/lib filename.cpp -lglut -lGL -lGLU

  


In the above command,we instruct g++ compiler to fetch glut, gl, glu libraries from /usr/lib

  


  


Things to remember: 

#include // not GLUT/glut.h

#include //not iostream.h

![]()
