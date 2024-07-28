# Inception

## Project Description

The `Inception` project at School 42 is designed to introduce students to containerization and virtualization concepts using Docker. The goal is to create a multi-container Docker setup to deploy a web application stack involving MariaDB, Nginx, and WordPress with PHP-FPM.

## What It Does

The `Inception` project requires you to:
1. **Create a Docker Setup**: Define and configure Docker containers to build a complete application environment.
2. **Use Docker Compose**: Utilize Docker Compose to manage multi-container applications with a single YAML configuration file.
3. **Deploy a Web Application Stack**: Implement a stack with three primary services:
   - **MariaDB**: A database server for storing and managing data.
   - **Nginx**: A web server that serves static files and acts as a reverse proxy.
   - **WordPress with PHP-FPM**: A content management system (CMS) that runs on PHP-FPM, serving dynamic content.

4. **Ensure Inter-Container Communication**: Configure network settings to allow communication between containers.
5. **Set Up Volumes and Persistent Storage**: Manage data storage with Docker volumes to ensure data persists across container restarts.

## Implementation Details

- **Language**: The project is implemented using configuration files and shell scripting.
- **Tools and Technologies**:
  - **Docker**: For containerization, creating, and managing containers.
  - **Docker Compose**: For defining and running multi-container Docker applications.
  - **Configuration Files**:
    - **Dockerfile**: For building Docker images with custom configurations.
    - **docker-compose.yml**: For defining services, networks, and volumes in a multi-container environment.
  - **Shell Scripts**: Optional scripts for automating tasks or setting up the environment.

This project provides practical experience with Docker and containerization concepts, allowing you to build, deploy, and manage a complete web application stack using modern container orchestration tools.
