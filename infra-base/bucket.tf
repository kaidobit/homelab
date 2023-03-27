resource "minio_s3_bucket" "state_terraform_s3" {
  bucket = "homelab-state"
  acl    = "public"
  force_destroy = false
}