output "storage_account_name" {
  value       = azurerm_storage_account.this.name
  description = "value of the storage account name"
}

output "storage_account_id" {
  value       = azurerm_storage_account.this.id
  description = "value of the storage account id"
}

output "container_name" {
  value       = azurerm_storage_container.this.name
  description = "value of the storage container name"
}

output "container_id" {
  value       = azurerm_storage_container.this.id
  description = "value of the storage container id"
}
