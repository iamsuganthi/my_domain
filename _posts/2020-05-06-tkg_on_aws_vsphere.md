---
author: enthudrives
layout: post
comments: true
title: Run Kubernetes clusters across AWS and vSphere with TKG
excerpt: 'Large organizations to run their Kubernetes workloads on more than one cloud provider. Here is how TKG helps manage k8s clusters on multiple IaaS'
slug: tkg-on-aws-vsphere
categories:
- tkg
- tanzu
- kubernetes
- vsphere
- vmware
- containers
- aws
- multicloud
---

It is common for many large organizations to run their Kubernetes workloads on more than one cloud provider. It is a great strategy to utilise the benefits of on-prem and public cloud. In this blog, I will show you how to create, run and manage clusters across AWS and vSphere using Tanzu Kubernetes Grid (TKG).

## Brief intro to TKG
TKG is a bundle of tools that help run k8s in a production environment. In addition to vanilla kubernetes, TKG includes Open Source tools like Cluster API, Calico for networking, Fluent Bit for logging, Contour for ingress etc. 

## Prerequisites
1. Deploy TKG management cluster to Amazon EC2 - Follow steps in [docs](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.0/vmware-tanzu-kubernetes-grid-10/GUID-install-tkg-aws.html)
2. Deploy TKG on vSphere -  Follow steps in [docs](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.0/vmware-tanzu-kubernetes-grid-10/GUID-install-tkg-vsphere.html)
Alternatively, if you are on *vSphere 7*, you could enable kubernetes Workload management and skip step and follow [this link](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.0/vmware-tanzu-kubernetes-grid-10/GUID-tanzu-k8s-clusters-connect-vsphere7.html) to add vSphere management cluster to your TKG cli.

## Multiple TKG management clusters
Now that we have set up two different TKG clusters, lets see how we can manage them using the TKG cli.

``` tkg get management-cluster ```

```
+-------------------------------+---------------------------------------------------------------+
| MANAGEMENT CLUSTER NAME       | CONTEXT NAME                                                  |
+-------------------------------+---------------------------------------------------------------+
| tkg-mgmt-aws-zzzzz*  | tkg-mgmt-aws-zzzzz-admin@tkg-mgmt-aws-zzzzz |
| wcp.vsphere.test.io  | wcp.vsphere.test.io                         |
+-------------------------------+---------------------------------------------------------------+
```

* indicates the management cluster which is selected. AWS management cluster is selected at the moment.

Create a cluster on AWS:

```tkg create cluster my-aws-cluster --plan=dev --kubernetes-version=v1.17.3+vmware.2```

Once it is done, run the following command to make sure the cluster is created.
```tkg get cluster```

```
+----------+-------------+
| NAME | STATUS |
+----------+-------------+
| my-aws-cluster | Provisioned |
+----------+-------------+
```

### Create a cluster on vSphere:
Select the vSphere k8s cluster

```tkg set management-cluster wcp.abc.test.io```

To create a cluster in vSphere, 

```tkg create cluster my-tkg-cluster --plan=dev --namespace=demo --kubernetes-version=v1.16.8+vmware.1-tkg.3.60d2ffd```

Once the cluster is created, you could verify by running the command or you could login to the vCenter UI to take a look.
![Cluster in vCenter](/assets/img/vsphere-cluster.png)

## Key takeaways:
1. I could use different versions of kubernetes across AWS and vSphere.
2. I could use different storage classes across AWS and vSphere. Edit ~/.tkg/config.yaml to change storage classes or vm classes.
3. Consistent experience creating clusters across the two IaaS. I can use the same TKG Cli to manage clusters. Yay!


