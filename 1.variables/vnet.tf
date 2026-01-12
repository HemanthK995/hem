resource "azurerm_virtual_network" "we-vnet01" {
  name                = var.rg_vnet
  location            = azurerm_resource_group.westrg01.location
  resource_group_name = azurerm_resource_group.westrg01.name
  address_space       = var.rg_address_space 
}