#Part 1

### Project Overview
- Using Docker to create a container image that runs a nginx webserver that is hsting a website.
### How to Insall Docker
- Go to this website: https://www.docker.com/products/docker-desktop
 - Click on download for Windows
### How To Build Image in Dockerfile
- `FROM nginx`
 - This is the base image that includes the nginx webserver
- `COPY website/ /usr/share/nginx/html/`
 - This copies the files from website folder into the default Nginx document root directory.
### How to Run the Container 
- First you need to build the container 
 - `docker build -t <image name> .`
- Then you can run it
 - `docker run -d -p 80:80 <image name>`
### How to View the Project Running In The Container
- Open a browser and type http://localhost into the url if running docker on a local machine
- Or type the IP address of the host machine if running docker on a remote server

#Part 2

### Creating A Public Repo in Dockerhub
- Sign into Dockerhub and navugate to the Repositores tab
 - Click Create Repository and name it and give it a description
### Authenticate with Dockerhub via CLI using DockerHub Credentials
- Go to account settings and click Security
 - Create a new access token
  - Use this token with signing into docker in the CLI when it prompts you for your password
### How to Push Container Image to Dockerhub
- Make the correct tag of the dockerhub username/repo name
 - `docker tag prj4site:latest calzada4/prj4site:latest`
- Push the container image
 - `docker push calzada4/prj4site:latest` 
### Configuring GitHub Secrets
- Go to repo setting and click on Settings and Variables and then Actions
 - Click on New Repository Secret and fill in the information
- The Secrets that are set for this porject are your Dockerhub username and password
### Behavior of GitHub workflow
- Automatically builds a Docker image whenever changes are made to the master branch
- The project tag and ubuntu version are unique to my project
