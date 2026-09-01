variable "name" {
  description = "Name of the AKS cluster."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group containing AKS."
  type        = string
}

variable "location" {
  description = "Azure region for AKS."
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for AKS."
  type        = string
}

variable "kubernetes_version" {
  description = "Optional Kubernetes version."
  type        = string
  default     = null
}

variable "node_vm_size" {
  description = "VM size for the default node pool."
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the default node pool."
  type        = number
}

variable "tags" {
  description = "Tags applied to AKS."
  type        = map(string)
  default     = {}
}
