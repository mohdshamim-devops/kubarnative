variable "location" {
  description = "Azure region for all development resources."
  type        = string
  default     = "Central India"
}

variable "resource_group_name" {
  description = "Name of the development resource group."
  type        = string
  default     = "rg-kubernetes-dev"
}

variable "aks_name" {
  description = "Name of the development AKS cluster."
  type        = string
  default     = "aks-kubernetes-dev"
}

variable "aks_dns_prefix" {
  description = "DNS prefix for AKS."
  type        = string
  default     = "akskubernetesdev"
}

variable "kubernetes_version" {
  description = "Optional AKS Kubernetes version; null uses the Azure default."
  type        = string
  default     = null
}

variable "aks_node_vm_size" {
  description = "VM size for the AKS default node pool."
  type        = string
  default     = "Standard_B2s_v2"
}

variable "aks_node_count" {
  description = "Number of default AKS nodes."
  type        = number
  default     = 1
}

variable "acr_name" {
  description = "Globally unique ACR name; use only alphanumeric characters."
  type        = string
  default     = "acrkubernetesdev12345"
}

variable "acr_sku" {
  description = "ACR SKU."
  type        = string
  default     = "Basic"
}

variable "tags" {
  description = "Tags applied to development resources."
  type        = map(string)
  default = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
