resource "azurerm_resource_group" "westrg01" {
  name     = "Hemanth-we-pr-rg01"
  location = "westeurope"

  tags = {
    environment = "Production"
  }
}