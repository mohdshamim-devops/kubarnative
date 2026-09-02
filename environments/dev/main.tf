module "resource_group" {
  source = "../../modules/resource-group"
  resource_group_name = var.resource_group_name
}

module "acr" {
  source = "../../modules/acr"

  acr_name = var.acr_name
}

module "aks" {
  source = "../../modules/aks"

aks_name = var.aks_name
}
