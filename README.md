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
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The name of the resource group.<br/>  It must consist of lowercase letters and numbers, and have a length between 3 and 63 characters.<br/><br/>  Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->