# infra-base

Deploys S3-Bucket in minio, used for remote-state management.
Terraform Stack contains a sops-encrypted file, use `just decrypt`, after pulling and `just encrypt` before commiting.

## Init

`terraform init -backend-config="access_key=$TF_VAR_minio_access_key" -backend-config="secret_key=$TF_VAR_minio_secret_key" -backend-config="bucket=$TERRAFORM_BASE_INFRA_STATE_BUCKET" -backend-config="endpoint=$MINIO_ENDPOINT"`