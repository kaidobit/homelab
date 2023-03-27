provider "minio" {
  endpoint = var.minio_hostname
  ssl = var.minio_use_ssl
  access_key = var.minio_access_key
  secret_key = var.minio_secret_key
}