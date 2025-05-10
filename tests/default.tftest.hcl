provider "azurerm" {
  features {}
}

variables {
  rg_name        = "rg-gap-iac-demo-001"
  st_project     = "gapiacdemo"
  st_instance    = 1
  container_name = "examplecontainer"
}

run "lrs_account_replication_type" {
  command = plan

  assert {
    condition     = azurerm_storage_account.this.account_replication_type == "LRS"
    error_message = "The replication type is not correct"
  }
}

run "https_traffic_only_enabled" {
  command = plan

  assert {
    condition     = azurerm_storage_account.this.https_traffic_only_enabled == true
    error_message = "HTTPS traffic is not enabled"
  }
}

run "tls1_2_min_tls_version" {
  command = plan

  assert {
    condition     = azurerm_storage_account.this.min_tls_version == "TLS1_2"
    error_message = "The minimum TLS version is not correct"
  }
}

run "allow_nested_items_to_be_public" {
  command = plan

  assert {
    condition     = azurerm_storage_account.this.allow_nested_items_to_be_public == false
    error_message = "Nested items should not be public"
  }
}

run "staoragev2_account_kind" {
  command = plan
  assert {
    condition     = azurerm_storage_account.this.account_kind == "StorageV2"
    error_message = "The account kind is not correct"
  }
}

run "versioning_enabled" {
  command = plan
  assert {
    condition     = azurerm_storage_account.this.blob_properties.0.versioning_enabled == true
    error_message = "Versioning is not enabled"
  }
}

run "delete_retention_policy" {
  command = plan
  assert {
    condition     = azurerm_storage_account.this.blob_properties.0.delete_retention_policy.0.days == 7
    error_message = "The delete retention policy is not correct"
  }
}

run "delete_retention_policy_default_by_null" {
  variables {
    blob_delete_retention_policy_days = null
  }
  command = plan
  assert {
    condition     = azurerm_storage_account.this.blob_properties.0.delete_retention_policy.0.days == 7
    error_message = "The delete retention policy is not correct"
  }
}

run "container_delete_retention_policy" {
  command = plan
  assert {
    condition     = azurerm_storage_account.this.blob_properties.0.container_delete_retention_policy.0.days == 7
    error_message = "The container delete retention policy is not correct"
  }
}

run "container_delete_retention_policy_default_by_null" {
  variables {
    blob_container_delete_retention_policy_days = null
  }
  command = plan
  assert {
    condition     = azurerm_storage_account.this.blob_properties.0.container_delete_retention_policy.0.days == 7
    error_message = "The container delete retention policy is not correct"
  }
}

run "change_feed_enabled" {
  command = plan
  assert {
    condition     = azurerm_storage_account.this.blob_properties.0.change_feed_enabled == true
    error_message = "Change feed is not enabled"
  }
}

run "change_feed_retention_in_days" {
  command = plan
  assert {
    condition     = azurerm_storage_account.this.blob_properties.0.change_feed_retention_in_days == 7
    error_message = "The change feed retention is not correct"
  }
}

run "change_feed_retention_in_days_default_by_null" {
  variables {
    blob_change_feed_retention_in_days = null
  }
  command = plan
  assert {
    condition     = azurerm_storage_account.this.blob_properties.0.change_feed_retention_in_days == 7
    error_message = "The container delete retention policy is not correct"
  }
}

run "private_container_access_type" {
  command = plan
  assert {
    condition     = azurerm_storage_container.this.container_access_type == "private"
    error_message = "The container access type is not correct"
  }
}
