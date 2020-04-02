resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.aks_location
  resource_group_name = var.aks_resource_group_name
  dns_prefix          = var.aks_dns_prefix

  default_node_pool {
    name       = var.aks_default_node_pool_name
    node_count = var.aks_default_node_pool_node_count
    vm_size    = var.aks_default_node_pool_vm_size
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  tags = {
    Environment = "dev"
  }
}
