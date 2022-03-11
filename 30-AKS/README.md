```

1495  cat kubeconfig
 1496  ls
 1497  kubectl get nodes
 1498  kubectl get nodes --kubeconfig=kubeconfig
 1499  kubectl get pods --all-namespaces  --kubeconfig=kubeconfig
 1500  ls
 1501  cp -rf kubeconfig ~/.kube/config
 1502  kubectl get pods
 1503  kubectl get nodes
 1504  kubectl run hello-k8s --image=nginx --port=80
 1505  kubectl  get pods
 1506  kubectl  get pods -o wide
 1507  ls
 1508  kubectl  get pods
 1509  kubectl expose pod hello-k8s --type=LoadBalancer
 1510  kubectl get svc
```
