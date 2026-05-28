# To determine and copy all app library 
pip3 freeze > requirements.txt
# Check for all docker images
docker images
# To build docker image
docker build -t <image name>. 
# To create container
docker run -d -p5002:5002 firstdocker:latest
# Check for all containers that are running
docker ps 
# To find which docker container that is not running and those down 
docker ps -a
# To remove container
docker rmi <image id>

# To forcefully remove ALL containerS
 docker rm -vf $(docker ps -a -q)
# stopping docker
docker stop <container id>
# to start docker
docker start <container id>
# to login to dockerhub after creating image
docker login

# To push docker images to docker hub
 docker push <osagiefe/1docker>:latest