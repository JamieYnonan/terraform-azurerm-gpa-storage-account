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
