## List Docker CLI commands
`docker` or `docker container --help`

## To test or verify docker has been installed or not
`docker --version` or  `docker -v `

## To view even more details about your docker installation
`docker info` or  `docker version`

## Test that your installation works by running the simple Docker image, hello-world
`docker run hello-world`

## List the hello-world image that was downloaded to your machine
`docker image ls` or `docker images`

## List the containers are still running
`docker container ls` or `docker ps`

## List the containers which were running and are running i.e. this includes all the containers which has been stopped or alive
`docker ps -a` or `docker conatiner ls --all` or `docker conatiner ls -a`

## List Docker containers (all in quiet mode)
`docker container ls -aq`

## To pull an image without running
`docker pull image_name:tag`or `docker pull reponame/image-name:tag`

## To run the pulled image from local repo and if not present pull from docker hub and run 
`docker run image_name:tag` or `docker run reponame/image-name:tag`

## To run a image with a custom name
`docker run --name "custom-name" container-name` or `docker run --name "custom-name" repousername/reponame:tag-name`

## To stop a running container
`docker stop container_Id`

## To remove a conatiner 
`docker rm container_Id`

## To delete a image from the local repo
`docker rmi image_name`

## To know the info about the image
`docker run image_name cat /etc/*release*`

## To map data to avoid loss of it when removed or deleted
`docker run -v /opt/data: /var/lib/mysql`

## To have interactive shell 
`docker run -it image-name (i input, t treminal)`

## To run the app in the background,
`docker run -d -p 4000:80 image-name`

## to get back in attach mode
`docker attach contaioner_name`

## To see the logs of the docker image
`docker logs image-friendly-name` or `docker logs container-id`

## to know extra info about the container like port, ip
`docker inspect image-friendly-name` or `docker inspect container-id`

## To map container port no to host port no
`docker run -p hostport_no:containerport_no image_name`

## To map to available port on host_port
`docker run -d --name redisDynamic -p 6379 redis:latest`
`docker port redisDynamic 6379` -> to know the assisgned port

## to come out of vi editor
`esc then :wq enter`

## To build image .this creates a Docker image, which we’re going to name using the --tag option. Use -t if you want to use the a shorter option.
`docker build --tag=friendlyhello .` or `docker build . -t image_name_to_be_given:tag`

## To find the IP address, use the command (If you are using Docker Toolbox on Windows 7, use the Docker Machine IP instead of localhost)
`docker-machine ip`

## To Tag the image
- The notation for associating a local image with a repository on a registry is username/repository:tag. The tag is optional, but recommended, since it is the mechanism that registries use to give Docker images a version. Give the repository and **tag meaningful names for the context, such as get-started:part2. This puts the image in the get-started repository and tag it as part2**.
- Run docker tag image with your username, repository, and tag names so that the image uploads to your desired destination. The syntax of the command is:
- `docker tag image username/repository:tag` or `docker tag image:current_tag_name username/repository:tag`

## Publish or upload the image
`docker push username/repository:tag`

## List stacks or apps
`docker stack ls`       

## Run the specified Compose file
`docker stack deploy -c <composefile> <appname> ` 

## List running services associated with an app
`docker service ls`                 

## List tasks associated with an app
`docker service ps <service>`     

## Inspect task or container
`docker inspect <task or container>`  

## List container IDs
`docker container ls -q`                   

## Tear down an application
`docker stack rm <appname>`                 

## Take down a single node swarm from the manager
`docker swarm leave --force`      

## Hierarchy
- **Stack (top level)**
- **Services (2nd level)**
- **Containers (bottom level)**



