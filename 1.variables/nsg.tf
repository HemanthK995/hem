resource "azurerm_network_security_group" "we_nsg01" {
  name                = var.rg_nsg
  location            = azurerm_resource_group.westrg01.location
  resource_group_name = azurerm_resource_group.westrg01.name

  security_rule {
    name                       = "Allow_3389"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
resource "azurerm_subnet_network_security_group_association" "we_nsg01_association_we_vnet01_private_subnet01" {
  subnet_id                 = azurerm_subnet.we_vnet01_private_subnet01.id
  network_security_group_id = azurerm_network_security_group.we_nsg01.id
}