locals {
  st_name                            = "st${var.st_project}${format("%03d", var.st_instance)}"
  https_traffic_only_enabled         = true
  min_tls_version                    = "TLS1_2"
  allow_nested_items_to_be_public    = false
  local_user_enabled                 = false
  shared_access_key_enabled          = false
  blob_properties_versioning_enabled = true
  blob_propertieschange_feed_enabled = true
  container_access_type              = "private"
}
