# Docker-Notes
**Docker and Kubernetes**

1.We want to run our application on Kubernetes (K8s). Kubernetes does not build anything – it only takes ready container images and runs them. So first we use Docker to pack our code + all files it needs into an image (using Dockerfile and the command docker build). After the image is ready, we push it to a registry (like Docker Hub). Then we tell Kubernetes: “Hey, download this image and start it”. Kubernetes pulls the image and runs our app inside containers. That’s the whole story – Docker makes the image, Kubernetes runs it.

--> Our main gole is to manage the application.

--> Application will runs on servers.

--> For our side we need to think about the ==> How to containerize by using Docker ans Deploy/Manage using the Kubernates

--> As an app developer, I first write the source code. The final goal is that any user (private or public) can connect to the application and use it.
We never deploy the raw source code directly. The correct way is always Build → Deploy.
Between Build and Deploy we do these steps:

--> We use a build tool (like Maven for Java, npm for Node.js, pip/ poetry for Python, go build for Go, etc.)
The build tool creates one ready file – we call this file an artifact (example: .jar, .war, .zip, package with node_modules, binary file, etc.)
This artifact contains the code + all dependencies in one package.

--> To deploy properly, we must know:

Which language the app is using
What the artifact name/type is
What dependencies it needs

**In the old days we deployed like this:**

Bare metal servers → we managed hardware + OS + app ourselves (too much work)
Then virtualization (VMware, Hyper-V) → one physical server runs many VMs → better, but still heavy because each VM has its own full OS

**Now we use containerization (Docker):**

Our focus is only the application → no need to manage hardware or full OS
Virtualization = focus on hardware/infra/OS
Containerization = focus only on the application and its dependencies
Containers are very lightweight (share the host OS kernel)
Each container is isolated, starts in seconds, and runs exactly the same everywhere
