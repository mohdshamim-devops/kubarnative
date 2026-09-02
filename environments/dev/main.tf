module "resource_group" {
  source = "../../modules/resource-group"
  resource_group_name = var.resource_group_name
}

module "acr" {
  source = "../../modules/acr"

  acr_name = var.acr_name
  depends_on = [module.resource_group]
}

module "aks" {
  source = "../../modules/aks"

aks_name = var.aks_name
depends_on = [module.resource_group]
}