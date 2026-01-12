
resource "azurerm_subnet" "we_vnet01_public_subnet01" {
  name                 = "public-subnet01"
  resource_group_name  = azurerm_resource_group.westrg01.name
  virtual_network_name = azurerm_virtual_network.we-vnet01.name
  address_prefixes     = ["172.16.1.0/24"]
}
resource "azurerm_subnet" "we_vnet01_private_subnet01" {
  name                 = "private-subnet01"
  resource_group_name  = azurerm_resource_group.westrg01.name
  virtual_network_name = azurerm_virtual_network.we-vnet01.name
  address_prefixes     = ["172.16.2.0/24"]
}
resource "azurerm_subnet" "we_vnet01_DB_subnet01" {
  name                 = "DB-subnet01"
  resource_group_name  = azurerm_resource_group.westrg01.name
  virtual_network_name = azurerm_virtual_network.we-vnet01.name
  address_prefixes     = ["172.16.3.0/24"]
}