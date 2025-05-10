resource "azurerm_storage_account" "this" {
  name                            = local.st_name
  resource_group_name             = data.azurerm_resource_group.this.name
  location                        = data.azurerm_resource_group.this.location
  account_tier                    = var.account_tier
  account_replication_type        = var.account_replication_type
  account_kind                    = var.account_kind
  https_traffic_only_enabled      = local.https_traffic_only_enabled
  min_tls_version                 = local.min_tls_version
  allow_nested_items_to_be_public = local.allow_nested_items_to_be_public
  local_user_enabled              = local.local_user_enabled
  shared_access_key_enabled       = local.shared_access_key_enabled

  blob_properties {
    versioning_enabled = local.blob_properties_versioning_enabled

    delete_retention_policy {
      days = var.blob_delete_retention_policy_days
    }

    container_delete_retention_policy {
      days = var.blob_container_delete_retention_policy_days
    }

    change_feed_enabled           = local.blob_propertieschange_feed_enabled
    change_feed_retention_in_days = var.blob_change_feed_retention_in_days
  }
}

resource "azurerm_storage_container" "this" {
  depends_on            = [azurerm_storage_account.this]
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.this.id
  container_access_type = local.container_access_type
}
