# network

Deploys all networking-related.
Terraform stack contains a sops-encrypted file, use `just decrypt`, after pulling and `just encrypt` before committing.

## Requirements

* deployed [infra-base](../infra-base/README.md)
* unifi controller user with admin permissions

## Deployment

1. configure `.env`
    * terraform unifi provider
2. create a `secrets.tf`
3. initialize using: `terraform init  -backend-config="endpoint=$MINIO_HOST" -backend-config="access_key=$MINIO_ACCESS_KEY" -backend-config="secret_key=$MINIO_SECRET_KEY"`
4. `terraform apply`