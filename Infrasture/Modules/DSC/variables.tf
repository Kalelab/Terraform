variable "dsc_configuration_url" {
  description = "The URL to the DSC configuration script"
  type        = string
}

variable "resource_group" {
  description = "The name of the resource group"
  type        = string
}

variable "vmss_name" {
  description = "The name of the Virtual Machine Scale Set"
  type        = string
}
