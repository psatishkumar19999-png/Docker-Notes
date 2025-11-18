# Docker-Notes
**Docker and Kubernetes**

We want to run our application on Kubernetes (K8s). Kubernetes does not build anything – it only takes ready container images and runs them. So first we use Docker to pack our code + all files it needs into an image (using Dockerfile and the command docker build). After the image is ready, we push it to a registry (like Docker Hub). Then we tell Kubernetes: “Hey, download this image and start it”. Kubernetes pulls the image and runs our app inside containers. That’s the whole story – Docker makes the image, Kubernetes runs it.

Our main gole is to 
