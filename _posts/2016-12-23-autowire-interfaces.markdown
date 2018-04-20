---
author: enthudrives
comments: true
date: 2016-12-23 11:05:55+00:00
excerpt: 'Spring lets you autowire all components implementing the interface.

  If you want to inject all implementations of an interface in some service, you can
  just inject a list of the interface type.'
layout: post
link: https://tsuganthi.wordpress.com/2016/12/23/autowire-interfaces/
slug: autowire-interfaces
title: Autowire Interfaces
keywords: spring, autowire interfaces, inheritance, application context
wordpress_id: 863
categories:
- java
- spring
post_format:
- Quote
---

Spring lets you autowire all components implementing the interface.

    
    @Component
    public interface Animal {
       void talk();
    }

    public class Cat implements Animal {
      void talk() {
        System.out.println("Meow");
      }
    }
    
    class Dog implements Animal {
      void talk() {
        System.out.println("Bow wow");
      }
    }


If you want to inject all implementations of `Animal` interface in some service, you can just inject a list of type Animal.

    @Autowired
    private List<Animal> animals;

The field `animals` is a list of all components implementing the `Animal` interface. Now if you want to invoke `talk()` method on Dog, Cat and other implementations of the `Animal` interface, you can do the following.

    
    class SomeService {
      @Autowired
      private List<Animal> animals;
    
      void someMethod() {
        animals.forEach(Animal::talk())
      }
    }



