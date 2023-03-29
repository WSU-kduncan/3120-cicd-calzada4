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

