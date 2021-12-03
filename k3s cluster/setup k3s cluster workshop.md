prerequisite: cloud account , Two ubuntu servers 

<p> Install k3s using below command on 1st vm </p>

```
curl -sfL https://get.k3s.io | sh -
```

<p> copy the accesskey token </p>

```
cat /var/lib/rancher/k3s/server/node-token
```
<p>login to another vm manually and excute below command paste the accesskey and server ip</p>

```
curl -sfL https://get.k3s.io | K3S_URL=https://myserver:6443 K3S_TOKEN=XXX sh -
```
<p> For output follow command in master node</P>

```
sudo k3s kubectl get nodes
```
