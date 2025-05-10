variable "rg_name" {
  type        = string
  description = <<DESCRIPTION
  The name of the resource group.
  It must consist of lowercase letters and numbers, and have a length between 3 and 63 characters.

  Changing this forces a new resource to be created.
  DESCRIPTION
  nullable    = false

  validation {
    condition     = can(regex("^rg-[a-z0-9-]{3,56}-[0-9]{3}$", var.rg_name))
    error_message = "The value must consist of lowercase letters and numbers, and have a length between 3 and 63 characters"
  }
}

variable "st_project" {
  type        = string
  description = <<DESCRIPTION
  The project name.
  It must be lowercase and have a length between 3 and 18 characters.

  Changing this forces a new resource to be created.
  DESCRIPTION
  nullable    = false

  validation {
    condition     = can(regex("^[a-z]{3,18}$", var.st_project))
    error_message = "The project name must be lowercase and have a length between 3 and 18 characters"
  }
}

variable "st_instance" {
  type        = number
  description = <<DESCRIPTION
  The storage account instance.
  It must be greater than or equal to 1 and less than or equal to 999.

  Changing this forces a new resource to be created.
  DESCRIPTION
  nullable    = false

  validation {
    condition     = var.st_instance >= 1 && var.st_instance <= 999
    error_message = "The storage account instance must be greater than or equal to 1 and less than or equal to 999"
  }
}

variable "blob_delete_retention_policy_days" {
  type        = number
  description = <<DESCRIPTION
  The days for the blob delete retention policy.
  It must be greater than or equal to 3 and less than or equal to 30.
  DESCRIPTION
  default     = 7
  nullable    = false

  validation {
    condition     = var.blob_delete_retention_policy_days >= 3 && var.blob_delete_retention_policy_days <= 30
    error_message = "The blob delete retention policy days must be greater than or equal to 3 and less than or equal to 30"
  }
}

variable "blob_container_delete_retention_policy_days" {
  type        = number
  description = <<DESCRIPTION
  The days for the container delete retention policy.
  It must be greater than or equal to 3 and less than or equal to 30.
  DESCRIPTION
  default     = 7
  nullable    = false

  validation {
    condition     = var.blob_container_delete_retention_policy_days >= 3 && var.blob_container_delete_retention_policy_days <= 30
    error_message = "The container delete retention policy days must be greater than or equal to 3 and less than or equal to 30"
  }
}

variable "blob_change_feed_retention_in_days" {
  type        = number
  description = <<DESCRIPTION
  The days for the change feed retention.
  It must be greater than or equal to 3 and less than or equal to 30.
  DESCRIPTION
  default     = 7
  nullable    = false

  validation {
    condition     = var.blob_change_feed_retention_in_days >= 3 && var.blob_change_feed_retention_in_days <= 30
    error_message = "The change feed retention in days must be greater than or equal to 3 and less than or equal to 30"
  }
}

variable "account_tier" {
  type        = string
  description = <<DESCRIPTION
  The account tier.
  It must be one of the following values: Standard, Premium.

  Changing this forces a new resource to be created.
  DESCRIPTION
  default     = "Standard"
  nullable    = false
  validation {
    condition     = can(regex("^(Standard|Premium)$", var.account_tier))
    error_message = "The account tier must be one of the following values: Standard, Premium"
  }
}

variable "account_replication_type" {
  type        = string
  description = <<DESCRIPTION
  The account replication type.
  It must be one of the following values: LRS, GRS, RA-GRS, ZRS, GZRS, RA-GZRS.

  Changing this forces a new resource to be created.
  DESCRIPTION
  default     = "LRS"
  nullable    = false
  validation {
    condition     = can(regex("^(LRS|GRS|RA-GRS|ZRS|GZRS|RA-GZRS)$", var.account_replication_type))
    error_message = "The account replication type must be one of the following values: LRS, GRS, RA-GRS, ZRS, GZRS, RA-GZRS"
  }
}

variable "account_kind" {
  type        = string
  description = <<DESCRIPTION
  The account kind.
  It must be one of the following values: StorageV2, BlobStorage, FileStorage, BlockBlobStorage.

  Changing this forces a new resource to be created.
  DESCRIPTION
  default     = "StorageV2"
  nullable    = false
  validation {
    condition     = can(regex("^(StorageV2|BlobStorage|FileStorage|BlockBlobStorage)$", var.account_kind))
    error_message = "The account kind must be one of the following values: StorageV2, BlobStorage, FileStorage, BlockBlobStorage"
  }
}

variable "container_name" {
  type        = string
  description = <<DESCRIPTION
  The value must consist of lowercase letters and numbers, and have a length between 3 and 63 characters

  Changing this forces a new resource to be created.
  DESCRIPTION
  nullable    = false

  validation {
    condition     = can(regex("^[a-z0-9]{3,63}$", var.container_name))
    error_message = "The value must consist of lowercase letters and numbers, and have a length between 3 and 63 characters"
  }
}
