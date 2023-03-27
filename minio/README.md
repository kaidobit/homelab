# minio

Minio is deployed on a Synology NAS as a Dockercontainer.

## Deployment

1. configure `minio`-annotated variables in `.env`
2. (upload `.env` and `docker-compose.yml` to target-host)
3. `docker-compose up` (on target-host)