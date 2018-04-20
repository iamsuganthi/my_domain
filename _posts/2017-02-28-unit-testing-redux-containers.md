---
author: enthudrives
comments: true
layout: post
title: Unit Testing Redux Containers
categories:
- Tech
- React
- Redux
- Javascript
keywords: react, redux, unit testing, tdd, containers, provider, mock store
---

Enzyme is a library for testing react components. I've used jest and enzyme to write unit tests for my react-redux application. 

The snippets used in this article are from this [Counter](https://github.com/enthudrives/counter-demo) repository on github.

The `Counter` component is a pure presentational component. ie, it doesn't maintain a state of its own.  
{% gist enthudrives/45abad1feb47550b3f8d13ddfe2777b2 %} 


Enzyme lets you mount components in isolation, on a dummy DOM. 
This component has information about how to map the props to DOM elements. 
To unit test this component, mount it with enzyme and verify if props are consumed as expected on the dummy dom.
Unit test for this component:
    
{% gist enthudrives/b00b21571e52074808f13a9758a3b89d %}

CounterContainer connects Counter to the store. In other words, it prepares the props which are expected by the Counter component. 
{% gist enthudrives/e51d4906fb03b1ae214f9be5838ada31 %} 

Enzyme can be used to mount redux containers as well(They are components too. D'uh!). 
Containers need a store when they are mounted. In redux applications, the `Provider` component passes the store to all containers through the context. However, we can pass a mock store to the container in unit tests. [redux-mock-store](https://github.com/arnaudbenard/redux-mock-store) can be used to create a mock store for testing.

Unit test corresponding to the `CounterContainer`:
{% gist enthudrives/eb1f4720ad299742969312658371feb0 %} 

Since it is a mock store, it is easy verify if `dispatch` is called with the expected action type.

<b><code>Source code:</code></b> [Counter](https://github.com/enthudrives/counter-demo)
