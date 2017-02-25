---
author: enthudrives
comments: true
date: 2016-12-23 11:56:13+00:00
excerpt: 'When a method has a for, if-else blocks, with Java 8, it is tempting to
  convert the whole block to a single statement with lambdas.


  '
layout: post
link: https://tsuganthi.wordpress.com/2016/12/23/lamdas-at-the-cost-of-readability__trashed/
published: false
slug: lamdas-at-the-cost-of-readability__trashed
title: Lambdas at the cost of readability
wordpress_id: 898
categories:
- java
- lambda
---



When a method has a for, if-else blocks, with Java 8, it is tempting to convert the whole block to a single statement with lambdas.

    
    for (Book book : books) {
      if (book.isAvailable()) {
        System.out.println("Available book: " + book.getName());
      }
    }


Most of the time, `for` and `if` blocks are a clear code smell. They make me wonder if there is room for refactoring there. With Java 8, the above for loop could be converted to this one-liner.

    
    books
      .stream()
      .filter(Book::isAvailable())
      .map(Book::getName())
      .forEach(name -> System.out.println("Available book: " + name));


Woohoo. We have no for loops in code. Number of lines of code has been reduced. And, it doesn't look like Java anymore :P

Sadly, this code doesn't perform any better. And it is not very easy to understand this either. I like Lambdas. But they can easily become hard to understand.

