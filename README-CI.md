### What Am I Doing?
- I'm using Docker to create a container image that runs a webserver and has a website. - Nginx is being used as the webserver.
### How To Install Docker
- Go to https://www.docker.com/products/docker-desktop and click download for Windows.
 - Open Docker from start menu.
### How To Build An Image From The Dockerfile
- `FROM nginx`
 - This is the base 
- `COPY website/ /usr/share/nginx/html/
 - website is being copied to the defualt nginx document root directory.
### How To Run The Container
- Need to build the container first using `docker build -t <name of site image> .`
- Then you can run
 - Use `docker run -d -p 80:80: <name of site image>`
  - This maps the container's port 80 to your machine's port 80. 
