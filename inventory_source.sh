#!/bin/bash

ansible-inventory -i /dev/stdin --list <<PasteHERE
[kube-master:children]
master

[kube-node:children]
node

[k8s-cluster:children]
master
node
calico-rr

[master]
master1 ansible_host=192.168.90.212 etcd_member_name=etcd1

[node]
node1 ansible_host=192.168.90.214 
node2 ansible_host=192.168.90.213 
node3 ansible_host=192.168.90.211 

[etcd:children]
kube-master

[calico-rr]
PasteHERE
