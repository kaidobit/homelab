resource "minio_bucket" "state_management_bucket" {
  name = var.state_bucket_name
  versioning_enabled = true
}