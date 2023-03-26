terraform {
  backend "s3" {
    endpoint = "http://192.168.10.3:9000"
    key = "homelab-base/terraform.tfstate"
    force_path_style = true
    region = "main"
    skip_requesting_account_id = true
    skip_credentials_validation = true
    skip_get_ec2_platforms = true
    skip_metadata_api_check = true
    skip_region_validation = true
  }

  required_providers {
    minio = {
      version = "1.13.0"
      source  = "aminueza/minio"
    }
  }
}
