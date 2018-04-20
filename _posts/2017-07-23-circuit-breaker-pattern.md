---
author: enthudrives
comments: true
layout: post
title: Circuit Breaker Pattern
categories: [Tech, Patterns, Spring Boot]
keywords: kotlin, spring boot, circuit breaker, resilience, cloud native, release it
---

With Micro-services pattern, we rely more on the availability of services to connect with. Even if the services being consumed are written in a way to handle errors gracefully, there is a few more factors, like Network Connections, which could break your application. This makes it important to anticipate and handle failures when interacting with external systems.

The idea is similar to the Circuit Breaker in electrical systems. When you try to consume more electricity than the treshold, the fuse would blow up, leaving the electric circuit open. This prevents you from overloading the electrical circuit again. You need to close the circuit (with a copper wire) before you can consume electricity.

Circuit Breaker pattern is similar. If a remote system is unhealthy, the circuit is left open, so that your application does not wait for a timeout from the remote system repeatedly.

The difference with Circuit breaker in Software is that, there is no need for a human intervention in fixing the circuit. After a certain amount of time, the circuit breaker goes to a `half-open` state, in which the next call to the remote system is made to the remote system. If this call passes, the circuit gets `closed`. Else, it remains `open`.

## Don't do it if it hurts!

*This post is based on the book **Release It!** by **Michael T.Nygard**.*