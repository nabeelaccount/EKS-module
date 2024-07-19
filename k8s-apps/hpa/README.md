# Horiziontal Pod Autoscaler

You will need to deploy the modules/apps metrics-server on EKS before deploying HPA on EKS. HPA is dependent on the metrics-server.

Here we will deploy a horizontal pod autoscaler.

## Testing
Once you've deploy the kubernetes resouces you can test the hpa as follows

1) run a Fibonacci index of 44. 
```
curl "localhost:8080/api/cpu?index=44"
```

This should increase the CPU enough to trigger a new pod. You can check the increase in pod by running
```
kubectl get pods -n horizontal-pod-autoscaler
```

You can check and see the CPU value increase in the hpa by running the following
```
kubectl -n horizontal-pod-autoscaler get hpa -w
```

