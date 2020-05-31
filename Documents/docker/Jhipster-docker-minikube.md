# Preapring new Deployment
1. **for cmd**                                                  
    `mvnw package -Pprod -DskipTests jib:dockerBuild`

2. **for powershell**                                                           
    `./mvnw package -Pprod -DskipTests jib:dockerBuild`

# Pushing to Docker Hub                         
1. **Tag locally your image:**                                                                                                         
    `docker image tag application username/application`

2. **Docker login for pushing into the repo**                                   
    `docker login`

3. **Push your image to Docker Hub:**                                       
    3docker image push username/application`


# Start minikube                                                            
`start minikube`

# Further steps
1. In the root directory of the jhipster project 
`jhipster kubernetes`

2. Select appropriate answer for the asked questions

3. In the last give the command to deploy the image
`kubectl-apply.sh`

4. Deleting the deployed application 
kubectl delete -f application

5. To get the pods
`kubectl get pods`

6. To get the logs
`kubectl logs podname`