# terraform-azurerm-gpa-storage-account

Repositorio demo para Global Azure Peru 2025

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.10 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>4.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>4.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | The value must consist of lowercase letters and numbers, and have a length between 3 and 63 characters<br/><br/>  Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The name of the resource group.<br/>  It must consist of lowercase letters and numbers, and have a length between 3 and 63 characters.<br/><br/>  Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_st_instance"></a> [st\_instance](#input\_st\_instance) | The storage account instance.<br/>  It must be greater than or equal to 1 and less than or equal to 999.<br/><br/>  Changing this forces a new resource to be created. | `number` | n/a | yes |
| <a name="input_st_project"></a> [st\_project](#input\_st\_project) | The project name.<br/>  It must be lowercase and have a length between 3 and 18 characters.<br/><br/>  Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | The account kind.<br/>  It must be one of the following values: StorageV2, BlobStorage, FileStorage, BlockBlobStorage.<br/><br/>  Changing this forces a new resource to be created. | `string` | `"StorageV2"` | no |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | The account replication type.<br/>  It must be one of the following values: LRS, GRS, RA-GRS, ZRS, GZRS, RA-GZRS.<br/><br/>  Changing this forces a new resource to be created. | `string` | `"LRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | The account tier.<br/>  It must be one of the following values: Standard, Premium.<br/><br/>  Changing this forces a new resource to be created. | `string` | `"Standard"` | no |
| <a name="input_blob_change_feed_retention_in_days"></a> [blob\_change\_feed\_retention\_in\_days](#input\_blob\_change\_feed\_retention\_in\_days) | The days for the change feed retention.<br/>  It must be greater than or equal to 3 and less than or equal to 30. | `number` | `7` | no |
| <a name="input_blob_container_delete_retention_policy_days"></a> [blob\_container\_delete\_retention\_policy\_days](#input\_blob\_container\_delete\_retention\_policy\_days) | The days for the container delete retention policy.<br/>  It must be greater than or equal to 3 and less than or equal to 30. | `number` | `7` | no |
| <a name="input_blob_delete_retention_policy_days"></a> [blob\_delete\_retention\_policy\_days](#input\_blob\_delete\_retention\_policy\_days) | The days for the blob delete retention policy.<br/>  It must be greater than or equal to 3 and less than or equal to 30. | `number` | `7` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_id"></a> [container\_id](#output\_container\_id) | value of the storage container id |
| <a name="output_container_name"></a> [container\_name](#output\_container\_name) | value of the storage container name |
| <a name="output_storage_account_id"></a> [storage\_account\_id](#output\_storage\_account\_id) | value of the storage account id |
| <a name="output_storage_account_name"></a> [storage\_account\_name](#output\_storage\_account\_name) | value of the storage account name |
<!-- END_TF_DOCS -->
