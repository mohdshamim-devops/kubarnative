resource "azurerm_kubernetes_cluster" "aks" {
  for_each = var.aks_name
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  dns_prefix          = each.value.dns_prefix
  kubernetes_version  = each.value.kubernetes_version

  default_node_pool {
    name       = "system"
    vm_size    = each.value.node_vm_size
    node_count = each.value.node_count
  }

  identity {
    type = each.value.identity_type
  }
}
