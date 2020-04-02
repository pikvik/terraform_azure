resource "azurerm_key_vault" "kv" {
  name                = var.kv_name
  location            = var.kv_location
  resource_group_name = var.kv_resource_group_name
  tenant_id           = var.kv_tenant_id
  sku_name            = var.kv_sku_name
}
