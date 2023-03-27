# infra-base

Deploys all networking-related in my homelab.
Terraform Stack contains a sops-encrypted file, use `just decrypt`, after pulling and `just encrypt` before commiting.

## Init

`terraform init -backend-config="access_key=$TF_VAR_minio_access_key" -backend-config="secret_key=$TF_VAR_minio_secret_key" -backend-config="bucket=$TF_VAR_state_bucket_name"`