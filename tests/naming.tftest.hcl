provider "azurerm" {
  features {}
}

variables {
  rg_name        = "rg-gap-iac-demo-001"
  st_project     = "gapiacdemo"
  st_instance    = 5
  container_name = "examplecontainer"
}

run "st_name" {
  command = plan

  assert {
    condition     = azurerm_storage_account.this.name == "stgapiacdemo005"
    error_message = "The Storage Account name is not correct"
  }
}

run "standard_accoumt_tier" {
  command = plan

  assert {
    condition     = azurerm_storage_account.this.account_tier == "Standard"
    error_message = "The Storage Account tier is not correct"
  }
}

run "invalid_project_min_length" {
  variables {
    st_project = "ab"
  }
  command         = plan
  expect_failures = [var.st_project]
}

run "invalid_project_max_length" {
  variables {
    st_project = "abcdabcdabcdabcdabcda"
  }
  command         = plan
  expect_failures = [var.st_project]
}

run "invalid_alphanumeric_project" {
  variables {
    st_project = "ab12"
  }
  command         = plan
  expect_failures = [var.st_project]
}

run "invalid_prefix_rg_name" {
  variables {
    st_project = "abcdefg001"
  }
  command         = plan
  expect_failures = [var.st_project]
}

run "invalid_instance_rg_name" {
  variables {
    st_project = "abcdefg01"
  }
  command         = plan
  expect_failures = [var.st_project]
}

run "invalid_container_name_min_length" {
  variables {
    st_project = "ab"
  }
  command         = plan
  expect_failures = [var.st_project]
}

run "invalid_container_name_max_length" {
  variables {
    st_project = "abcdabcdabcdabcdabcda"
  }
  command         = plan
  expect_failures = [var.st_project]
}
