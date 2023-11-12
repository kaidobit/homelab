terraform {
  backend "s3" {
    bucket="homelab-state"
    key = "network/terraform.tfstate"
    force_path_style = true
    region = "main"
    skip_requesting_account_id = true
    skip_credentials_validation = true
    skip_get_ec2_platforms = true
    skip_metadata_api_check = true
    skip_region_validation = true
  }
}
