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
3. initialize using: `terraform init -backend-config="access_key=$TF_VAR_minio_access_key" -backend-config="secret_key=$TF_VAR_minio_secret_key" -backend-config="bucket=$TF_VAR_state_bucket_name" -backend-config="endpoint=$INFRA_BASE_MINIO_HOST_URL"`
4. `terraform apply`