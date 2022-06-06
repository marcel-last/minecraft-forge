# Minecraft Forge Containerized
This is a containerized version of Minecraft Forge.


## Minecraft Forge Libraries and Configuration
Minecraft Forge jar executables, libraries, configuratiuon and mods are to be placed in [src](./src/) directory of this project.


## Getting Started

### Docker
```bash
# To build and start your Minecraft Forge instance with `docker`:
$ docker build -t minecraft-forge:1.18.2-40.1.30 .
$ docker run -p 25565:25565 minecraft-forge:1.18.2-40.1.30

# To stop your running `Docker` container instance:
$ docker ps
CONTAINER ID   IMAGE                COMMAND                  CREATED         STATUS         PORTS                                       NAMES
e58e8f830c8d   minecraft-forge:1.18.2-40.1.30   "docker-entrypoint.s…"   8 minutes ago   Up 8 minutes   0.0.0.0:25565->25565/tcp, :::25565->25565/tcp   priceless_feistel

$ docker stop e58e8f830c8d
```

### Docker Compose
```bash
# To build and start your Minecraft Forge deployment with `docker-compose`:
$ docker-compose up --build

# To stop your running `docker-compose` deployment:
$ docker-compose down
```
