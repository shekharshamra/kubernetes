# kubernetes
Creating docker application before deploying to Kubernetes

1. create dockerfile and keep as below
FROM tomcat:jdk8-openjdk-slim
COPY sample.war /usr/local/tomcat/webapps

2. For test Keep the sample code in the same location or refer the complete path of you code. you can download the code from below link.

https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/

3. Run docker build to build new image

docker build -t NameOfNewImage .

4. Validate the image after is has been created(test the deployment and try accessing application)
docker run -d -p 8080:8080 --name app1 otuapachetomcat

In the above example i am runing this new created image and binding host 8080 port with container 8080 port

4. Tag Image with Remote repository name 
docker tag otuapachetomcat csharma4u/apachetomcat:v1.0

Wow you are done with application packaging(That mean all the dependencies are required to run the application we have in image and now we are good to push this image to remote and run in any environment/cloud/or by orch system).

5. push repo
docker tag otuapachetomcat csharma4u/apachetomcat:v1.0


