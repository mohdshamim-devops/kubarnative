output "resource_group_name" {
  value = module.resource_group.name
}

output "aks_id" {
  value = module.aks.id
}

output "acr_login_server" {
  value = module.acr.login_server
}
