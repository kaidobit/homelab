provider "unifi" {
  username = var.unifi_controller_username
  password = var.unifi_controller_password
  api_url  = var.unifi_controller_hostname
  allow_insecure = var.unifi_controller_allow_insecure
}