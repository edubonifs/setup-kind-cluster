# Prerequisites

Only supported for Linux and Mac users.

For Mac users, it is mandatory to have any docker runtime as can be Docker Desktop in my case: https://www.docker.com/products/docker-desktop/

## Usage

Create the demo environment with:

```shell
make demo
```
## Clean up

Clean up the environment with:

```shell
make cleanup-test-cluster
```

## Check the environment
```shell
$ kind get clusters 
wiz-cluster-1
```
```shell
% kubectl get po -A
NAMESPACE            NAME                                                  READY   STATUS    RESTARTS   AGE
kube-system          coredns-5d78c9869d-bqj6m                              1/1     Running   0          16m
kube-system          coredns-5d78c9869d-qjdsv                              1/1     Running   0          16m
kube-system          etcd-wiz-cluster-1-control-plane                      1/1     Running   0          16m
kube-system          kindnet-xbvbj                                         1/1     Running   0          16m
kube-system          kube-apiserver-wiz-cluster-1-control-plane            1/1     Running   0          16m
kube-system          kube-controller-manager-wiz-cluster-1-control-plane   1/1     Running   0          16m
kube-system          kube-proxy-qjhmx                                      1/1     Running   0          16m
kube-system          kube-scheduler-wiz-cluster-1-control-plane            1/1     Running   0          16m
local-path-storage   local-path-provisioner-6bc4bddd6b-4gpdn               1/1     Running   0          16m
```

