provider "azurerm" {
  features {}
}

variables {
  rg_name                                     = "rg-gap-iac-demo-001"
  st_project                                  = "gapiacdemo"
  st_instance                                 = 1
  blob_delete_retention_policy_days           = 3
  blob_container_delete_retention_policy_days = 3
  blob_change_feed_retention_in_days          = 3
  container_name                              = "examplecontainer"
}

run "min_delete_retention_policy" {
  command = plan
  assert {
    condition     = azurerm_storage_account.this.blob_properties.0.delete_retention_policy.0.days == 3
    error_message = "The delete retention policy is not correct"
  }
}

run "min_container_delete_retention_policy" {
  command = plan
  assert {
    condition     = azurerm_storage_account.this.blob_properties.0.container_delete_retention_policy.0.days == 3
    error_message = "The container delete retention policy is not correct"
  }
}

run "min_change_feed_retention_in_days" {
  command = plan
  assert {
    condition     = azurerm_storage_account.this.blob_properties.0.change_feed_retention_in_days == 3
    error_message = "The change feed retention is not correct"
  }
}

run "invalid_delete_retention_policy" {
  variables {
    blob_delete_retention_policy_days = 2
  }
  command         = plan
  expect_failures = [var.blob_delete_retention_policy_days]
}

run "invalid_container_delete_retention_policy" {
  variables {
    blob_container_delete_retention_policy_days = 2
  }
  command         = plan
  expect_failures = [var.blob_container_delete_retention_policy_days]
}

run "invalid_change_feed_retention_in_days" {
  variables {
    blob_change_feed_retention_in_days = 2
  }
  command         = plan
  expect_failures = [var.blob_change_feed_retention_in_days]
}
