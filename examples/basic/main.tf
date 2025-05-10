terraform {
  required_version = "~>1.10"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.3"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}

module "sa" {
  source         = "git::https://github.com/JamieYnonan/terraform-azurerm-gpa-storage-account.git?ref=v1"
  rg_name        = "rg-application-001"
  st_instance    = 1
  st_project     = "project"
  container_name = "container"
}
