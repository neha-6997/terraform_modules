resource "azurerm_storage_account" "storageaccount5646" {
#   count                    = 3
  name                     = "storageaccount5646"
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "random_string" "random_result" {
  length  = 6
  special = false

}