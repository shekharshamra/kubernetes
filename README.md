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





