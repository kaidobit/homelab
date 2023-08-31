
resource "minio_s3_bucket" "state_management_bucket" {
  bucket = "homelab-state"
  acl    = "public"
}

resource "minio_s3_bucket_versioning" "bucket" {
  bucket = minio_s3_bucket.state_management_bucket.bucket

  versioning_configuration {
    status = "Enabled"
  }
}