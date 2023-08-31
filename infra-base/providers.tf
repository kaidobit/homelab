provider minio {
  minio_server   = var.minio_endpoint
  minio_access_key = var.minio_access_key
  minio_secret_key = var.minio_secret_key
  minio_ssl      = var.minio_use_ssl
}