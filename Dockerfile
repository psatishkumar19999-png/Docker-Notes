Dockerfile:-
A Dockerfile is a text file that contains instructions to build a Docker image.
Docker builds the image layer by layer, executing each instruction one at a time.

Why Dockerfile name must be CAPITAL D
--Docker expects the file name as Dockerfile by default
--Case-sensitive systems (Linux) require exact naming
--Otherwise you must explicitly pass the file name using -f
-----------------------------------------------------------

How Docker builds an image

--Each instruction in a Dockerfile creates a new image layer.
--These layers together form a Docker image.
--When an image is run, Docker creates a container with:
--Read-only image layers
--One writable layer (only for the container)
--The writable layer exists only after the container is created.

+++Important Dockerfile Instructions+++
FROM
Defines the base image
Must be the first instruction
Example: FROM ubuntu:20.04

RUN

Used while building the image
Executes commands and creates layers
Example: install packages, update OS
RUN is executed at build time

COPY

Copies files from host → image
Syntax: COPY <source> <destination>
Blindly copies files (no extraction)

ADD

Similar to COPY, but with extra features:
Can extract tar files automatically
Can copy files from URLs

Best practice:
Use COPY unless you specifically need ADD features.

CMD

Defines the default process that runs when container starts
Runs at container runtime, not build time
If the CMD process stops → container exits


