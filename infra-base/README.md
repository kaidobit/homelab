# infra-base

Deploys S3-bucket in minio, used for remote-state management.
Terraform stack contains a sops-encrypted file, use `just decrypt`, after pulling and `just encrypt` before committing.

## Requirements

* deployed [minio](../minio/README.md)
* terraform user with service-account in minio
* terraform-state-bucket in minio

## Deployment

1. configure the variables in `.env`:
   * infra-base
   * minio terraform provider
2. create a `secrets.tf`
3. initialize using:
`terraform init -backend-config="access_key=$TF_VAR_minio_access_key" -backend-config="secret_key=$TF_VAR_minio_secret_key" -backend-config="bucket=$INFRA_BASE_TERRAFORM_STATE_BUCKET" -backend-config="endpoint=$INFRA_BASE_MINIO_HOST_URL"`
4. `terraform apply`