data "unifi_ap_group" "all" {
}

data "unifi_user_group" "all" {
}

resource "unifi_network" "corporate_vlan" {
  for_each     = var.corporate_vlans

  purpose      = "corporate"
  vlan_id    = each.key
  name       = each.value["name"]
  subnet     = each.value["subnet"]

  dhcp_enabled = true
  dhcp_dns     = ["1.1.1.1", "8.8.8.8"]
  dhcp_start = each.value["dhcp_start"]
  dhcp_stop  = each.value["dhcp_stop"]
}

resource "unifi_wlan" "wpa2_wifi" {
  for_each     = local.wifi_vlan_mapping
  network_id        = each.value
  name              = var.wpa2_wifis[each.key]["name"]
  passphrase        = var.wpa2_wifis[each.key]["passphrase"]
  security          = "wpapsk"
  ap_group_ids      = [data.unifi_ap_group.all.id]
  user_group_id     = data.unifi_user_group.all.id
}