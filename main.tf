provider "azurerm" {
  version = "2.0.0"
  features {}
}

resource "azurerm_storage_blob" "blob" {
  name                   = "testfile.txt"
  storage_account_name   = var.storage_account_name
  storage_container_name = var.storage_container_name
  type                   = "Block"
  source                 = "testfile.txt"
}