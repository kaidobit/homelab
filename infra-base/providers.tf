provider "minio" {
  minio_server = var.minio_hostname
  minio_user = var.minio_access_key
  minio_password = var.minio_secret_key
}