# Building a fully fledged EKS cluster

## github action
You can read more on this on: https://blog.flaviusdinu.com/github-actions-pipelines-for-terraform-32f1171d18dc


## Type of ingress available

AWS Load Balancer Controller
- Creates a layer 7 load balancer outside of the EKS cluster that's able to understand HTTP option (HTTP path, POST/GET, Host name)
- Routing is handled outside of the cluster AND since it's outside the cluster, TLS certificate is easier to configure with Amazon Cert Manager (ACM)
- TLS termination at the load balancer layer
- Load balancer target groups are directly Kubernetes IP pods
- negative: Monitoring traffic from ALB is difficult to configure and expensive
- negative: creates one load balancer per ingress (with some workaround)

Ingress Controller
- Example Nginx, Traefix
- Deployed in kubernetes as regular application/pods.
- It creates an external layer 4 (UDP) network loadbalancer
- All application traffic will be routed to the nginx ingress application which will point to the gateway external loadbalancer
- routing will be done by the ingress application (nginx) and TLS termination will be at the controller application level.
- Nginx ingress controller does SSL termination because it understand and processes HTTP requests.
- negative: For TLS: certificate and secret key must be stored in the Kubernetes cluster and mounted on the Ingress applcation.
- Monitoring ingress application is easier as we just monitor one of the applications (ingress app) using Prometheus.

AWS Load Balancer controller + Ingress Controller
- AWS LB ingress: Benefit of easily provisioning TLS cert with the external load balancer and ACM
- AWS LB ingress: Can deploy NLB for us
- Standard ingress: Benefit of having ingress application within your cluster to access metrics
- Standard ingress: Can easily collect metrics from Nginx Controller pod