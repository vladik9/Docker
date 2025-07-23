# Docker Cheatsheet

![img](./assets/logo.png)

## 📌 Introduction

Docker is a platform that enables developers to build, share, and run applications in containers. This cheatsheet provides a quick reference for essential Docker commands.

---

## 🐳 Docker Installation

* **Check if Docker is installed:**
  ```sh
  docker --version
  ```
* **Start Docker (if not running automatically):**
  ```sh
  sudo systemctl start docker
  ```
* **Enable Docker to start on boot:**
  ```sh
  sudo systemctl enable docker
  ```

---

## 🚀 Working with Images

* **Search for an image:**
  ```sh
  docker search <image-name>
  ```
* **Pull an image from Docker Hub:**
  ```sh
  docker pull <image-name>
  ```
* **List downloaded images:**
  ```sh
  docker images
  ```
* **Remove an image:**
  ```sh
  docker rmi <image-id>
  ```

---

## 🛠️ Working with Containers

* **Run a container from an image:**
  ```sh
  docker run -d -p 8080:80 --name my_container <image-name>
  ```

  * **Run a container from an image with volumes and mapping of ports:**
  ```sh
  docker run  -p 3000:3000 -v app/node_modules -v $(pwd):/app containerId
  ```
* **List running containers:**
  ```sh
  docker ps
  ```
* **List all containers (including stopped ones):**
  ```sh
  docker ps -a
  ```
* **Stop a running container:**
  ```sh
  docker stop <container-id>
  ```
* **Restart a container:**
  ```sh
  docker restart <container-id>
  ```
* **Remove a container:**
  ```sh
  docker rm <container-id>
  ```
* **Start a stopped container:**
  ```sh
  docker start <container-id>
  ```
* **Run an interactive container:**
  ```sh
  docker run -it <image-name> /bin/bash
  ```
* **Access a running container:**
  ```sh
  docker exec -it <container-id> /bin/bash
  ```

---

## 📦 Working with Volumes

* **Create a volume:**
  ```sh
  docker volume create my_volume
  ```
* **List all volumes:**
  ```sh
  docker volume ls
  ```
* **Inspect a volume:**
  ```sh
  docker volume inspect my_volume
  ```
* **Remove a volume:**
  ```sh
  docker volume rm my_volume
  ```
* **Mount a volume to a container:**
  ```sh
  docker run -d -v my_volume:/data --name my_container <image-name>
  ```

---

## 🌐 Networking in Docker

* **List all networks:**
  ```sh
  docker network ls
  ```
* **Create a new network:**
  ```sh
  docker network create my_network
  ```
* **Connect a container to a network:**
  ```sh
  docker network connect my_network <container-id>
  ```
* **Disconnect a container from a network:**
  ```sh
  docker network disconnect my_network <container-id>
  ```
* **Remove a network:**
  ```sh
  docker network rm my_network
  ```

---

## 🛑 Cleaning Up Docker

* **Remove all stopped containers:**
  ```sh
  docker container prune
  ```
* **Remove all unused images:**
  ```sh
  docker image prune
  ```
* **Remove all unused networks:**
  ```sh
  docker network prune
  ```
* **Remove all unused volumes:**
  ```sh
  docker volume prune
  ```
* **Remove everything (containers, images, networks, volumes):**
  ```sh
  docker system prune -a
  ```

---

## 🏗️ Docker Compose

* **Start services from `docker-compose.yml`:**
  ```sh
  docker-compose up -d
  ```
* **Stop services:**
  ```sh
  docker-compose down
  ```
* **Restart services:**
  ```sh
  docker-compose restart
  ```
* **View logs of services:**
  ```sh
  docker-compose logs -f
  ```
* **Rebuild images and restart containers:**
  ```sh
  docker-compose up --build
  ```

---

## 🔥 Additional Commands

* **Save an image as a tar file:**
  ```sh
  docker save -o my_image.tar <image-name>
  ```
* **Load an image from a tar file:**
  ```sh
  docker load -i my_image.tar
  ```
* **Tag an image:**
  ```sh
  docker tag <image-id> myrepo/myimage:latest
  ```
* **Push an image to Docker Hub:**
  ```sh
  docker push myrepo/myimage:latest
  ```

---

## 🎯 Conclusion

This cheatsheet covers essential Docker commands for managing images, containers, volumes, networking, and Docker Compose. Use it as a quick reference when working with Docker in development and production environments!

Happy Dockering! 🐳
# Docker
