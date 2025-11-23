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

**Artifacts:**
Artifacts are the output files generated during a build or development process — for example, executables, libraries, JAR files, Docker images, or configuration bundles.

**Dependencies:**
Dependencies are external components, libraries, or packages that a project needs in order to run or build successfully.

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
Each container is isolated, starts in seconds, and runs exactly the same everywhere.

Port 80 → default HTTP (web traffic)
Port 8080 → second/alternative HTTP port for web applications

**Docker file** -- This is all about the instructions - What ever we need to build we mention in the docker file.

**Application source code + dependencies are written (defined) in the Dockerfile**

Dockerfile = Instructions to build an image

Workflow:

**Dockerfile → Build → Image → Registry → (We will deploy into Dev/QA/ PROD) Deploy as Containers**

Dockerfile: Contains instructions (source code + dependencies)

Build: Docker reads the Dockerfile and creates an image

Image: Packaged application

Registry: Storage to upload and share images

Containers: Deployed/running instances created from the image

Image = Package

Container = Running instance of image

**Docker is called as container runtime**

----> Docker helps developers build, share, run, and verify applications anywhere — without tedious environment configuration or management.

**Docker → Dockerfile → Image → Container**


**Dockerfile (docker build) → Image (docker push) → Registry → Container (docker run) → Application runs as per Dockerfile instructions**


**Docker objects:**

Images → Packaged application (read-only template)

Containers → Running instances of images

Dockerfile → Instructions to build an image

Volumes → Persistent storage for containers

Networks → Communication between containers

Registry → Storage for Docker images (Docker Hub, ECR, etc.)
