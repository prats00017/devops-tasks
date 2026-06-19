

### 1. Created Amazon EKS Cluster

Cluster Name:

``` text
nginx-cluster
```

<img width="1918" height="898" alt="image" src="https://github.com/user-attachments/assets/4e2fb2c3-fa52-4cf8-893d-d83bf3ccb3a5" />


------------------------------------------------------------------------

### 2. Created Worker Node Group

Initial instance type:

``` text
t3.micro
```

Due to pod capacity limitations, the worker nodes were recreated using:

``` text
t3.small
```



------------------------------------------------------------------------

### 3. Verified Cluster Nodes

``` powershell
kubectl get nodes
```

<img width="1176" height="92" alt="image" src="https://github.com/user-attachments/assets/2adc60f6-d7bb-4967-83f8-946366c628b3" />


------------------------------------------------------------------------

### 4. Deployed Nginx Application

``` powershell
kubectl apply -f nginx-deployment.yaml
```


### 5. Verified Pods

``` powershell
kubectl get pods -A
```

<img width="1277" height="327" alt="image" src="https://github.com/user-attachments/assets/d45c59ac-8062-4ce9-b13c-a4b32f40dcfb" />


------------------------------------------------------------------------

### 6. Created LoadBalancer Service

``` powershell
kubectl apply -f nginx-service.yaml
```

<img width="1918" height="677" alt="image" src="https://github.com/user-attachments/assets/5f717fa2-6d6c-41c9-acdd-85770859e485" />


------------------------------------------------------------------------

### 7. AWS Load Balancer Verification

Classic Load Balancer created successfully.

-   Internet-facing
-   2/2 instances in service

<img width="1918" height="905" alt="image" src="https://github.com/user-attachments/assets/858abea8-a4e3-4769-9fef-bf53f82f84ac" />

------------------------------------------------------------------------

### 8. Accessed Application Outside Cluster

Public ELB DNS:

``` text
http://af38df21daa4c4aaba99773bf5085480-1110248336.ap-south-1.elb.amazonaws.com
```

<img width="1918" height="967" alt="image" src="https://github.com/user-attachments/assets/fa99a339-5c69-46b2-8284-56d576960a12" />


## Commands Used

``` powershell
kubectl get nodes
kubectl get pods -A
kubectl apply -f nginx-deployment.yaml
kubectl apply -f nginx-service.yaml
kubectl get svc
```


## Conclusion

Successfully created an Amazon EKS cluster and deployed an Nginx
application. The application was exposed outside the cluster using an
AWS Elastic Load Balancer and verified through the Nginx welcome page.
