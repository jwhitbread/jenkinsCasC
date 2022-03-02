#!/bin/bash

# Get environment
read -p 'Git commit message?: ' gitcommitvar

# Checkout dev and push to github
git checkout master
git commit -am "$gitcommitvar"
git push

# Build docker image
docker build -t jwhitbread/jenkinscasc:latest .

# Push docker image to Dockerhub
docker push jwhitbread/jenkinscasc:latest