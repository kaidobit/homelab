# Minio in my Homelab

Minio in my Homelab is deployed on my Synology NAS as a Dockercontainer. 

## Getting Started

1. copy `.env.dist` to `.env`
2. configure the `.env`
3. start with `docker-compose up -d`


## Terraform State Managment
Due to the chicken-egg-problem I have to setup an initial user with service-account for Terraform, since form here on were continuing with that.
This can be accomplished either using either the UI or minio-client
