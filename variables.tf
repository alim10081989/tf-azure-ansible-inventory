variable "resource_group_location" {
  type        = string
  default     = "centralus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name combined with a random ID to generate unique name in Azure subscription."
}
