# infra-base

Deploys S3-bucket in minio, used for remote-state management.
Terraform stack contains a sops-encrypted file, use `just decrypt`, after pulling and `just encrypt` before committing.

## Requirements

* deployed minio
* terraform user with service-account in minio
* terraform-state-bucket in minio

## Deployment

1. configure the variables in `.env`:
   * infra-base
   * minio terraform provider
2. create a `secrets.tf`
3. initialize using:
   ```
   terraform init \
      -backend-config="endpoint=$MINIO_HOST" \
      -backend-config="access_key=$MINIO_ACCESS_KEY" \
      -backend-config="secret_key=$MINIO_SECRET_KEY"
   ```
4. `terraform apply`

## New Projects/Stacks

Every new project:

```
terraform {
  backend "s3" {
    bucket = "terraform-base"
    key = "<PROJECTNAME>-base/terraform.tfstate"
    force_path_style = true
    region = "main"
    skip_requesting_account_id = true
    skip_credentials_validation = true
    skip_get_ec2_platforms = true
    skip_metadata_api_check = true
    skip_region_validation = true
  }
}
```

Every new Stack:
```
terraform {
  backend "s3" {
    bucket = "<STATE_BUCKETNAME>"
    key = "<STACKNAME>/terraform.tfstate"
    force_path_style = true
    region = "main"
    skip_requesting_account_id = true
    skip_credentials_validation = true
    skip_get_ec2_platforms = true
    skip_metadata_api_check = true
    skip_region_validation = true
  }
}
```