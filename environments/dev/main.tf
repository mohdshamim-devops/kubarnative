module "resource_group" {
  source = "../../modules/resource-group"

  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "acr" {
  source = "../../modules/acr"

  name                = var.acr_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  sku                 = var.acr_sku
  tags                = var.tags
}

module "aks" {
  source = "../../modules/aks"

  name                = var.aks_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  dns_prefix          = var.aks_dns_prefix
  kubernetes_version  = var.kubernetes_version
  node_vm_size        = var.aks_node_vm_size
  node_count          = var.aks_node_count
  tags                = var.tags
}
