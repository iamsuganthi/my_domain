---
author: enthudrives
layout: post
comments: true
title: Kubernetes vs Containers
excerpt: 'Large organizations to run their Kubernetes workloads on more than one cloud provider. Here is how TKG helps manage k8s clusters on multiple IaaS'
slug: kubernetes-vs-containers
categories:
- kubernetes
- containers
- docker
- cloud
---


<p>If you interact with Software development teams as a part of your role, you would have heard the term Kubernetes (or 'K8s' as it is fondly known). This is a complicated concept to understand, especially if you do not have a Software Engineering background. </p>


<p>Last week, I was in a meeting with a few non-technical colleagues who were sharing customer stories around containers and Kubernetes. They were using jargon like containers, docker, kubernetes in this conversation.</p>


<p>A curious colleague who was listening in turned to me and asked “What is the difference between a Container and Kubernetes?” There was silence in the room, everyone eagerly waiting to hear this technical person’s answer.</p>


<p>The easy answer  —  Docker is used to create <em>containers</em> and Kubernetes is used to <em>orchestrate</em> them. I could get away with this explanation, but that is just throwing more tech jargon to the fire. How can you clearly articulate&nbsp; the differences between these technologies, let alone explain these concepts in a human-friendly, digestible way?</p>

<!-- wp:heading {"level":3} -->
<h3><strong>B</strong>ackground</h3>
<!-- /wp:heading -->


<p>Let’s say, we are building a simple website called <em>chatter.com </em>where people can post short updates about their life<em>.</em></p>


<p>Here the engineers build this application in a programming language like java. They get it working on their machine, but you cannot see what they have built until this software application is available on the internet. Hence, this software needs to be <strong>deployed </strong>somewhere.</p>


<p>This application can be deployed on the company’s cloud infrastructure — it’s just computers on someone else’s hardware.</p>


<p>Since the application is written in java, the computer needs java to run the website. The engineers therefore package this application with java, so that it can be run on any computer just like it runs on the engineer’s machine.&nbsp;</p>


<p>This package is called a <strong>container</strong>. Just like regular airtight food containers, containers in the digital world come in different shapes and sizes. Based on the size of containers, more than one container can run on a computer.&nbsp;</p>


<p><em>We have our chatter.com running with containers. So what’s the deal with Kubernetes?</em></p>

<!-- wp:heading {"level":3} -->
<h3><strong>C</strong>ontainers to<strong> K</strong>ubernetes</h3>
<!-- /wp:heading -->


<p>For the next part, let’s pretend that the Cloud Infrastructure is like a 2x2 storage unit, where each shelf is a computer. Containers are just boxes. There are already a few (black coloured) containers on these shelves.</p>

![Each cube is a computer. Pink box is the chatter container](/assets/img/k8s.png)


<p>Engineers write scripts to drop the <em>chatter</em> container on an available shelf in the storage unit. This container is running on the top-right shelf (the pink container in the image).</p>


<p>Now, imagine there is an earthquake and this container suddenly crashes to the floor. Yep, sometimes websites crash too! Someone has to repeat the previous step again to replace the container.</p>


<p>How great would it be if there was someone watching over all these containers, making sure they are always running well? Enter <strong>Kubernetes</strong> to the rescue.</p>


![Kubernetes healing a burning pod](/assets/img/healing_k8s.png)



<p>When a container crashes, k8s tries to heal the container and brings it back to life. It makes sure all containers are healthy and safe. K8s helps with finding a vacant spot for containers and allocates them to the appropriate shelf based on its size; ensuring the optimal use of shelf space.</p>


<p>This is a very high level differentiation between containers and k8s. There is more to k8s than allocating compute to containers. If you are interested in learning more, please leave a comment. I will share more details in subsequent posts. :) </p>