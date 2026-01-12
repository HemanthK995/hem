resource "azurerm_virtual_network" "we-vnet01" {
  name                = "Hemanth-we-pr-vnet01"
  location            = azurerm_resource_group.westrg01.location
  resource_group_name = azurerm_resource_group.westrg01.name
  address_space       = ["172.16.0.0/16"]  
}