## Prerequisite: 
<!-- UL -->
* Ubuntu server - 2hosts

## Install k3s using below command on controller plane </p>

```
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.20.7+k3s1 sh -
```

## copy the accesskey token </p>

```
cat /var/lib/rancher/k3s/server/node-token
```
## On the node excute below command paste the accesskey and server ip</p>

```
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.20.7+k3s1 K3S_URL=https://server ip:6443 K3S_TOKEN=XXX sh -
```
## For output follow command in controller plane</P>

```
sudo k3s kubectl get nodes
```
