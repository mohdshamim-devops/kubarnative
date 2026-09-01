variable "name" {
  description = "Globally unique Azure Container Registry name."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group containing ACR."
  type        = string
}

variable "location" {
  description = "Azure region for ACR."
  type        = string
}

variable "sku" {
  description = "Azure Container Registry SKU."
  type        = string
  default     = "Basic"
}

variable "tags" {
  description = "Tags applied to ACR."
  type        = map(string)
  default     = {}
}
