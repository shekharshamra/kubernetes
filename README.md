# kubernetes
1. Create tomcat-service.yaml File(you can copy code for testing)

2. Create deployment

[root@172-0-1-4 kube]# kubectl apply -f tomcat-service.yaml

deployment.apps/app-server created

 
In this example we are going to launch 5 POD and each POD would be running Tomcat Sample application


3. Display information about the deployment

[root@172-0-1-4 kube]# kubectl get deployments

NAME         READY   UP-TO-DATE   AVAILABLE   AGE

app-server   2/2     2            2           86s



[root@172-0-1-4 kube]# kubectl describe deployment app-server


4. Display information about your ReplicaSet objects:

[root@172-0-1-4 kube]# kubectl get replicasets

NAME                      DESIRED      CURRENT      READY     AGE

app-server-597c5b9c64        5              5         5       4m19s

[root@172-0-1-4 kube]#


[root@172-0-1-4 kube]# kubectl describe replicasets



5. Create a Service object that exposes the deployment

[root@172-0-1-4 kube]# kubectl expose deployment app-server --type=LoadBalancer --name=application-serice


6.  Display information about the Service:

[root@172-0-1-4 kube]# kubectl get services application-serice

NAME                   TYPE               CLUSTER-IP     EXTERNAL-IP     PORT(S)          AGE

application-serice      LoadBalancer      10.0.179.153   104.208.27.61   8080:32666/TCP   58s

[root@172-0-1-4 kube]#











