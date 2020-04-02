module "dev-aks" {
  source                           = "../../modules/aks"
  aks_name                         = "dev-aks-cluster"
  aks_location                     = "Westus"
  aks_resource_group_name          = "dev"
  aks_dns_prefix                   = "dev-aks-cluster-dns"
  aks_default_node_pool_name       = "nodepool01"
  aks_default_node_pool_node_count = "1"
  aks_default_node_pool_vm_size    = "Standard_A2"
  client_id                        = "da23cb22-cc03-4a06-bb72-cb20da91a93e"
  client_secret                    = "CZ4ko:5/t8ru8fEfgb/XdUzSHz:0HFn1"
}

module "dev-acr" {
  source                  = "../../modules/acr"
  acr_name                = "appregistryterraform"
  acr_location            = "South India"
  acr_resource_group_name = "dev"
}

module "dev-kv" {
  source                 = "../../modules/keyvault"
  kv_name                = "secretmanager"
  kv_location            = "South India"
  kv_resource_group_name = "dev"
  kv_tenant_id           = "ce03bf7c-33f1-4c6c-a0f1-c330cdc16438"
  kv_sku_name            = "standard"
}
