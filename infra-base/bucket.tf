resource "minio_s3_bucket" "state_terraform_s3" {
  bucket = var.state_bucket_name
  acl    = "public"
  force_destroy = false
}