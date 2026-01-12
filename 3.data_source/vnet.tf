resource "azurerm_virtual_network" "we-vnet01" {
  name                = var.rg_vnet
  location            = data.azurerm_resource_group.rg01.location
  resource_group_name = data.azurerm_resource_group.rg01.name
  address_space       = var.rg_address_space 
}