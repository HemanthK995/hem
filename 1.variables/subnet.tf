
resource "azurerm_subnet" "we_vnet01_public_subnet01" {
  name                 = var.rg_subnet
  resource_group_name  = azurerm_resource_group.westrg01.name
  virtual_network_name = azurerm_virtual_network.we-vnet01.name
  address_prefixes     = var.rg_padd
}
resource "azurerm_subnet" "we_vnet01_private_subnet01" {
  name                 = var.rg_private
  resource_group_name  = azurerm_resource_group.westrg01.name
  virtual_network_name = azurerm_virtual_network.we-vnet01.name
  address_prefixes     = var.rg_ptad
}
resource "azurerm_subnet" "we_vnet01_DB_subnet01" {
  name                 = var.rg_d
  resource_group_name  = azurerm_resource_group.westrg01.name
  virtual_network_name = azurerm_virtual_network.we-vnet01.name
  address_prefixes     = var.rg_dp
}