resource "azurerm_resource_group" "westrg01" {
  name     = var.rg_name
  location = var.rg_location
}