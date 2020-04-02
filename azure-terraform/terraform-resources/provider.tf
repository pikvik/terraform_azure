provider "azurerm" {
  version         = "=1.44.0"
  subscription_id = "c9068100-c73d-493a-a5b3-f5e29eafd633"
  client_id = "da23cb22-cc03-4a06-bb72-cb20da91a93e"
  client_secret = var.client_secret
  tenant_id = "ce03bf7c-33f1-4c6c-a0f1-c330cdc16438"
  # features {}
}
