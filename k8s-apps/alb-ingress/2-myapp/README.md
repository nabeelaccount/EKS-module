# Using ALB ingress with host to deploy and ingress resource

Check whether the front-end is accessible without having access to a host. e.g.
```
curl -i --header "Host: ex6.almahrizi.net" http://k8s-6example-myapp-b2f726a115-151001673.us-east-1.elb.amazonaws.com/about
```