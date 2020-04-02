terraform {
  backend "azurerm" {
    storage_account_name = "terraformstoarge"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
    access_key           = "zAJTHzQce3JmO1CCZgCGsHWEqH1m/YfBjWXEGUt8o3DmC+3sXaxQistIOJCQtGYlBr7/yvifA50lSnd3ygepiQ=="
  }
}
