# Ricardo Calzada Project 5

## Part 1

### CD Project Overview
- The purpose for this porject is to prcatice semantic versioning and deployment docker images using github. 

### GitHub Action Workflow
- In the "on" section, the workflow will trigger when a tag is pushed
- git describe and git rev-parse are used to get the git tag name and commit the hash
- docker/metadata is used to generate a set of tags based on the git tag name and commit hash
- the docker build command now uses the tage generate from docker/metadata-action
- Link to DockerHub
	- https://hub.docker.com/repositories/calzada4

## Part 2
- Follow this website to install docker on the instance
	- https://docs.docker.com/engine/install/ubuntu/

### Container Restart Script
- The script stops the existing container and removes it
- It then pulls the latest image from Dockerhub and starts a new container using the latest image
- In project 5 folder 

### Install Webhook
- `go build github.com/adnanh/webhook`
- `sudo apt-get install webhook`
- create hooks.json
	- run with `webhook -hooks hooks.json -verbose`

### Webhook Configuration
- The file runs the container restart script when an event with the name script.sh is recieved
- In the project 5 folder

### Configure Github to message the listener
- In the repo go to settings and then Webhooks
- Click add webhook and paste the URL of the webhook listener
- Set the event that you want Github to message
