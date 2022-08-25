resource "azurerm_storage_container" "sa_container" {
  name                  = var.name
  storage_account_name  = var.sa_name
  container_access_type = "private"
}