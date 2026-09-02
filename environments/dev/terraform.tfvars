resource_group_name = {
    resource1 = {
        name    = "rg-kubernetes-dev"
        location = "Central India"
    }
}

aks_name = {
    aks1 = {
        name                = "aks-kubernetes-dev"
        rg_name             = "rg-kubernetes-dev"
        location            = "Central India"
        dns_prefix          = "aks-kubernetes-dev"
        kubernetes_version  = "1.20.0"
        node_vm_size        = "Standard_B2s_v2"
        node_count          = 1
        identity_type       = "SystemAssigned"
    }
}

acr_name = {
    acr1 = {
        name          = "acrkubernetesdev12345"
        rg_name       = "rg-kubernetes-dev"
        location      = "Central India"
        sku           = "Basic"
        admin_enabled = true
    }
}