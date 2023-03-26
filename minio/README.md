# Minio in my Homelab

Minio in my Homelab is deployed on my Synology NAS as a Dockercontainer. 

## Getting Started

1. copy `.env.dist` to `.env`
2. optionally reconfigure the `.env`
3. start with `docker-compose up -d`

Then you can use the preinstalled [minio/client](https://github.com/minio/mc).

## Useful Commands

Adding a S3-Host to minio/client - `mc config host add <MINIO_CLIENT_HOSTNAME> http://<MINIO_HOST_IP>:<MINIO_HOST_PORT> <ACCESS_KEY> <SECRET_KEY>`

Creating a Minio User - `mc admin user add <MINIO_CLIENT_HOSTNAME> <ACCESS_KEY> <SECRET_KEY>`
